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
                                                    "text": "o.expr delete(/cc)\\; delete(/value)\\; delete(/parameter)\\; delete(/name)\\;", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-1", 
                                                    "patching_rect": [
                                                        79.5, 
                                                        225.0, 
                                                        472.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /parameter = [\\\"/pressure\\\"\\,\\\"/x\\\"\\,\\\"/y\\\"] [[(/cc + 1) % 3]]", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-14", 
                                                    "patching_rect": [
                                                        79.5, 
                                                        94.0, 
                                                        359.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.prepend /pad", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-68", 
                                                    "patching_rect": [
                                                        139.5, 
                                                        679.449402, 
                                                        91.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /cc -= 23\\; /cc /=3\\;", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-17", 
                                                    "patching_rect": [
                                                        79.5, 
                                                        135.778809, 
                                                        140.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /name = [\\\"/a/1\\\"\\, \\\"/b/1\\\"\\, \\\"/c/1\\\"\\, \\\"/d/1\\\"\\,\\\"/a/2\\\"\\, \\\"/b/2\\\"\\, \\\"/c/2\\\"\\, \\\"/d/2\\\"\\,\\\"/a/3\\\"\\, \\\"/b/3\\\"\\,\\\"/c/3\\\"\\, \\\"/d/3\\\"\\,\\\"/a/4\\\"\\,\\\"/b/4\\\"\\,\\\"/c/4\\\"\\,\\\"/d/4\\\"] [[/cc]]\\; assign(/name + /parameter\\, /value)", 
                                                    "numinlets": 1, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 2, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-20", 
                                                    "patching_rect": [
                                                        79.5, 
                                                        173.0, 
                                                        546.0, 
                                                        33.0
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
                                                    "id": "obj-3", 
                                                    "patching_rect": [
                                                        79.5, 
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
                                                    "id": "obj-7", 
                                                    "patching_rect": [
                                                        139.5, 
                                                        734.449402, 
                                                        25.0, 
                                                        25.0
                                                    ]
                                                }
                                            }
                                        ], 
                                        "default_fontface": 0, 
                                        "gridonopen": 0, 
                                        "rect": [
                                            485.0, 
                                            44.0, 
                                            860.0, 
                                            806.0
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
                                                        "obj-68", 
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
                                                        "obj-17", 
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
                                                        "obj-20", 
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
                                                        "obj-3", 
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
                                                        "obj-68", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-7", 
                                                        0
                                                    ]
                                                }
                                            }
                                        ], 
                                        "statusbarvisible": 2, 
                                        "gridsnaponopen": 0, 
                                        "bglocked": 0
                                    }, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
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
                                    "text": "p pad /cc encode", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "bgcolor": [
                                        0.996246, 
                                        1.0, 
                                        0.976593, 
                                        1.0
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-10", 
                                    "patching_rect": [
                                        558.614502, 
                                        344.003723, 
                                        102.0, 
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
                                                    "text": "o.prepend /button", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-61", 
                                                    "patching_rect": [
                                                        226.0, 
                                                        249.125381, 
                                                        105.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.route /cc /value /pressure /button", 
                                                    "numinlets": 5, 
                                                    "numoutlets": 5, 
                                                    "outlettype": [
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-60", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        213.763443, 
                                                        195.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /button = [\\\"/a\\\"\\, \\\"/b\\\"\\, \\\"/c\\\"] [[/cc]]\\; assign(/button + \\\"/pressure\\\"\\, /pressure)", 
                                                    "numinlets": 1, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 2, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-58", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        166.492813, 
                                                        289.85434, 
                                                        33.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /pressure = /value [[0]]", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-57", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        134.293411, 
                                                        166.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /cc -= 84", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-55", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        100.0, 
                                                        116.0, 
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
                                                    "id": "obj-135", 
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
                                                    "id": "obj-136", 
                                                    "patching_rect": [
                                                        226.0, 
                                                        329.125366, 
                                                        25.0, 
                                                        25.0
                                                    ]
                                                }
                                            }
                                        ], 
                                        "default_fontface": 0, 
                                        "gridonopen": 0, 
                                        "rect": [
                                            50.0, 
                                            94.0, 
                                            1140.0, 
                                            614.0
                                        ], 
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-135", 
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
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-55", 
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
                                                        "obj-57", 
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
                                                        "obj-58", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-60", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-60", 
                                                        4
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-61", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-61", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-136", 
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
                                    "text": "p button /cc encode", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-137", 
                                    "patching_rect": [
                                        1118.9198, 
                                        360.503723, 
                                        115.0, 
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
                                                    "text": "o.prepend /large/arrowbutton", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-7", 
                                                    "patching_rect": [
                                                        286.0, 
                                                        266.926941, 
                                                        165.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.route /cc /value /pressure /large/arrowbutton", 
                                                    "numinlets": 5, 
                                                    "numoutlets": 5, 
                                                    "outlettype": [
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-54", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        234.461823, 
                                                        255.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr assign(/large/arrowbutton + \\\"/pressure\\\"\\, /pressure)", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-43", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        199.599823, 
                                                        322.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /pressure = /value [[0]]", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-38", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        135.599854, 
                                                        166.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /cc -= 80", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-37", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        100.0, 
                                                        116.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /large/arrowbutton = [\\\"/a/2\\\"\\, \\\"/a/1\\\"\\, \\\"/b/2\\\"\\, \\\"/b/1\\\"] [[/cc]]", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-49", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        169.599823, 
                                                        365.0, 
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
                                                    "id": "obj-132", 
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
                                                    "id": "obj-133", 
                                                    "patching_rect": [
                                                        286.0, 
                                                        346.926941, 
                                                        25.0, 
                                                        25.0
                                                    ]
                                                }
                                            }
                                        ], 
                                        "default_fontface": 0, 
                                        "gridonopen": 0, 
                                        "rect": [
                                            100.0, 
                                            144.0, 
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
                                                        "obj-37", 
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
                                                        "obj-38", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-38", 
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
                                                        "obj-43", 
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
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-49", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-43", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-54", 
                                                        4
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
                                                        "obj-7", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-133", 
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
                                    "text": "p large/arrowbutton /cc encode", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-134", 
                                    "patching_rect": [
                                        943.9198, 
                                        360.503723, 
                                        175.0, 
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
                                                    "text": "o.prepend /button", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-32", 
                                                    "patching_rect": [
                                                        228.000061, 
                                                        261.883301, 
                                                        105.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.route /cc /value /pressure /button", 
                                                    "numinlets": 5, 
                                                    "numoutlets": 5, 
                                                    "outlettype": [
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-30", 
                                                    "patching_rect": [
                                                        52.0, 
                                                        228.600052, 
                                                        195.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr assign(/button + \\\"/pressure\\\"\\, /pressure)", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-28", 
                                                    "patching_rect": [
                                                        52.0, 
                                                        195.100052, 
                                                        262.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /button = [\\\"/rhombus\\\"] [[/cc]]", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-26", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        166.000015, 
                                                        233.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /pressure = /value [[0]]", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-23", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        134.099991, 
                                                        166.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /cc -= 79", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-18", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        100.0, 
                                                        116.0, 
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
                                                    "id": "obj-127", 
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
                                                    "id": "obj-128", 
                                                    "patching_rect": [
                                                        228.000061, 
                                                        341.883301, 
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
                                                        "obj-127", 
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
                                                        "obj-23", 
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
                                                        "obj-26", 
                                                        0
                                                    ]
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
                                                        "obj-30", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-30", 
                                                        4
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
                                                        "obj-32", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-128", 
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
                                    "text": "p rhombus /cc encode", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-130", 
                                    "patching_rect": [
                                        805.614502, 
                                        360.503723, 
                                        129.0, 
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
                                                    "text": "o.prepend /arrowbutton", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-107", 
                                                    "patching_rect": [
                                                        256.0, 
                                                        304.483398, 
                                                        135.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.route /cc /value /pressure /arrowbutton", 
                                                    "numinlets": 5, 
                                                    "numoutlets": 5, 
                                                    "outlettype": [
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-106", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        269.499939, 
                                                        225.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr assign(/arrowbutton + \\\"/pressure\\\"\\, /pressure)", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-104", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        227.500015, 
                                                        292.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /pressure = /value [[0]]", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-103", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        131.051102, 
                                                        166.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /cc -= 71", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-102", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        100.0, 
                                                        116.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /arrowbutton = [\\\"/a/4\\\"\\, \\\"/b/4\\\"\\, \\\"/a/3\\\"\\, \\\"/b/3\\\"\\, \\\"/a/2\\\"\\, \\\"/b/2\\\"\\, \\\"/a/1\\\"\\, \\\"/b/1\\\"] [[/cc]]\\;", 
                                                    "numinlets": 1, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 2, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-44", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        164.051163, 
                                                        263.195007, 
                                                        33.0
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
                                                    "id": "obj-124", 
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
                                                    "id": "obj-125", 
                                                    "patching_rect": [
                                                        256.0, 
                                                        384.483398, 
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
                                                        "obj-102", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-103", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-103", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-44", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-104", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-106", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-106", 
                                                        4
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-107", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-107", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-125", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-124", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-102", 
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
                                                        "obj-104", 
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
                                    "text": "p arrowbutton /cc encode", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-126", 
                                    "patching_rect": [
                                        660.614502, 
                                        336.503723, 
                                        145.0, 
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
                                                    "text": "o.expr /slider = [\\\"/4\\\"\\, \\\"/3\\\"\\, \\\"/2\\\"\\, \\\"/1\\\"\\, \\\"/a\\\"\\, \\\"/b\\\"\\, \\\"/c\\\"\\, \\\"/d\\\"\\, \\\"/long\\\"] [[/cc]]\\;assign(/slider + \\\"/2nd/position\\\"\\, /2nd/position)", 
                                                    "numinlets": 1, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 5, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-4", 
                                                    "patching_rect": [
                                                        480.122742, 
                                                        279.795624, 
                                                        184.0, 
                                                        74.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /slider = [\\\"/4\\\"\\, \\\"/3\\\"\\, \\\"/2\\\"\\, \\\"/1\\\"\\, \\\"/a\\\"\\, \\\"/b\\\"\\, \\\"/c\\\"\\, \\\"/d\\\"\\, \\\"/long\\\"] [[/cc]]\\; assign(/slider + \\\"/pressure\\\"\\, /pressure)", 
                                                    "numinlets": 1, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 5, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-3", 
                                                    "patching_rect": [
                                                        284.209961, 
                                                        272.795624, 
                                                        168.0, 
                                                        74.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /cc -= 3", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-91", 
                                                    "patching_rect": [
                                                        480.122742, 
                                                        214.840057, 
                                                        109.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /2nd/position = /value [[0]]", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-73", 
                                                    "patching_rect": [
                                                        480.122742, 
                                                        251.482635, 
                                                        184.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /cc -= 2", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-10", 
                                                    "patching_rect": [
                                                        76.0, 
                                                        186.252075, 
                                                        109.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.prepend /slider", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-78", 
                                                    "patching_rect": [
                                                        397.709991, 
                                                        496.812225, 
                                                        100.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.route /cc /value /position /pressure /slider /2nd/position", 
                                                    "numinlets": 7, 
                                                    "numoutlets": 7, 
                                                    "outlettype": [
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
                                                    "id": "obj-63", 
                                                    "patching_rect": [
                                                        106.709991, 
                                                        467.930145, 
                                                        310.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /pressure = /value [[0]]", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-56", 
                                                    "patching_rect": [
                                                        291.209961, 
                                                        242.252075, 
                                                        166.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /position = /value [[0]]", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-52", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        227.482635, 
                                                        161.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /cc -= 2", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-19", 
                                                    "patching_rect": [
                                                        319.709961, 
                                                        176.0, 
                                                        109.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /cc -= 12", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-16", 
                                                    "patching_rect": [
                                                        291.209961, 
                                                        214.033783, 
                                                        116.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /slider = [\\\"/4\\\"\\, \\\"/3\\\"\\, \\\"/2\\\"\\, \\\"/1\\\"\\, \\\"/a\\\"\\, \\\"/b\\\"\\, \\\"/c\\\"\\, \\\"/d\\\"\\, \\\"/long\\\"] [[/cc]]\\; assign(/slider + \\\"/position\\\"\\, /position)", 
                                                    "numinlets": 1, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 4, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-25", 
                                                    "patching_rect": [
                                                        40.709961, 
                                                        279.795624, 
                                                        204.0, 
                                                        60.0
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
                                                    "id": "obj-117", 
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
                                                    "id": "obj-118", 
                                                    "patching_rect": [
                                                        106.709991, 
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
                                                    "id": "obj-119", 
                                                    "patching_rect": [
                                                        236.709991, 
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
                                                    "id": "obj-120", 
                                                    "patching_rect": [
                                                        319.709961, 
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
                                                    "id": "obj-121", 
                                                    "patching_rect": [
                                                        480.122742, 
                                                        48.0, 
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
                                                    "id": "obj-122", 
                                                    "patching_rect": [
                                                        397.709991, 
                                                        576.812256, 
                                                        25.0, 
                                                        25.0
                                                    ]
                                                }
                                            }
                                        ], 
                                        "default_fontface": 0, 
                                        "gridonopen": 0, 
                                        "rect": [
                                            153.0, 
                                            65.0, 
                                            1001.0, 
                                            746.0
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
                                                        "obj-52", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-117", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-52", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-118", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-10", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-119", 
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
                                                        "obj-120", 
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
                                                        "obj-121", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-91", 
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
                                                        "obj-56", 
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
                                                        "obj-16", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-25", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-63", 
                                                        0
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
                                                        "obj-63", 
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
                                                        "obj-63", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-52", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-25", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-56", 
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
                                                        "obj-63", 
                                                        6
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-78", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-73", 
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
                                                        "obj-78", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-122", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-91", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-73", 
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
                                    "text": "p slider /cc encode", 
                                    "numinlets": 5, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-123", 
                                    "patching_rect": [
                                        328.672241, 
                                        336.503723, 
                                        111.0, 
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
                                                    "text": "o.expr /disc = [\\\"/a\\\"\\, \\\"/b\\\"] [[(/cc [[0]])]]\\;assign(/disc + \\\"/pressure\\\"\\, /pressure)", 
                                                    "numinlets": 1, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 3, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-1", 
                                                    "patching_rect": [
                                                        218.333313, 
                                                        175.491028, 
                                                        162.0, 
                                                        47.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.route /cc /value /pressure /direction /disc", 
                                                    "numinlets": 6, 
                                                    "numoutlets": 6, 
                                                    "outlettype": [
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-99", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        288.3909, 
                                                        235.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.prepend /disc", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-94", 
                                                    "patching_rect": [
                                                        266.0, 
                                                        321.257294, 
                                                        93.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /disc = [\\\"/a\\\"\\, \\\"/b\\\"] [[(/cc [[0]])]]\\; assign(/disc + \\\"/direction\\\"\\, /direction)", 
                                                    "numinlets": 1, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 3, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-11", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        175.491028, 
                                                        161.0, 
                                                        47.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /direction = /value [[0]]", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-90", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        141.390961, 
                                                        165.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /pressure = /value [[0]]", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-89", 
                                                    "patching_rect": [
                                                        218.333313, 
                                                        141.390961, 
                                                        166.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /cc = /cc - 16", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-88", 
                                                    "patching_rect": [
                                                        218.333313, 
                                                        100.0, 
                                                        116.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /cc = /cc - 4", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-87", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        107.390961, 
                                                        109.0, 
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
                                                    "id": "obj-111", 
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
                                                    "id": "obj-112", 
                                                    "patching_rect": [
                                                        218.333313, 
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
                                                    "id": "obj-113", 
                                                    "patching_rect": [
                                                        266.0, 
                                                        401.257294, 
                                                        25.0, 
                                                        25.0
                                                    ]
                                                }
                                            }
                                        ], 
                                        "default_fontface": 0, 
                                        "gridonopen": 0, 
                                        "rect": [
                                            50.0, 
                                            94.0, 
                                            800.0, 
                                            706.0
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
                                                        "obj-99", 
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
                                                        "obj-99", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-111", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-87", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-112", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-88", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-87", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-90", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-88", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-89", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-89", 
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
                                                        "obj-90", 
                                                        0
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
                                                        "obj-94", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-113", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-99", 
                                                        5
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-94", 
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
                                    "text": "p disc /cc encode", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-115", 
                                    "patching_rect": [
                                        451.300415, 
                                        336.503723, 
                                        103.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.cond /cc >= 71 && /cc <= 78\\; /cc >= 79", 
                                    "numinlets": 1, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-8", 
                                    "patching_rect": [
                                        575.614502, 
                                        155.736603, 
                                        227.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.cond /cc == 79\\; /cc >= 80 && /cc <= 83\\; /cc >= 84 && /cc <= 86", 
                                    "numinlets": 1, 
                                    "maxclass": "newobj", 
                                    "numoutlets": 4, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "linecount": 2, 
                                    "fontsize": 12.0, 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        679.614502, 
                                        213.001251, 
                                        195.0, 
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
                                                    "text": "o.prepend /pad", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-1", 
                                                    "patching_rect": [
                                                        230.199997, 
                                                        238.0, 
                                                        91.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.route /note /velocity /index /name", 
                                                    "numinlets": 5, 
                                                    "numoutlets": 5, 
                                                    "outlettype": [
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-33", 
                                                    "patching_rect": [
                                                        52.199997, 
                                                        202.399994, 
                                                        197.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /index = scale(/note\\, 36\\, 51\\, 0\\, 15)", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-2", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        100.0, 
                                                        229.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /name = [\\\"/a/1\\\"\\, \\\"/b/1\\\"\\, \\\"/c/1\\\"\\, \\\"/d/1\\\"\\,\\\"/a/2\\\"\\, \\\"/b/2\\\"\\, \\\"/c/2\\\"\\, \\\"/d/2\\\"\\,\\\"/a/3\\\"\\, \\\"/b/3\\\"\\,\\\"/c/3\\\"\\, \\\"/d/3\\\"\\,\\\"/a/4\\\"\\,\\\"/b/4\\\"\\,\\\"/c/4\\\"\\,\\\"/d/4\\\"] [[/index]]\\; assign(/name + \\\"/velocity\\\"\\, /velocity)", 
                                                    "numinlets": 1, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 4, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-12", 
                                                    "patching_rect": [
                                                        52.199997, 
                                                        132.0, 
                                                        349.0, 
                                                        60.0
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
                                                    "id": "obj-71", 
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
                                                    "id": "obj-72", 
                                                    "patching_rect": [
                                                        230.200012, 
                                                        282.399994, 
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
                                                        "obj-1", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-72", 
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
                                                        "obj-33", 
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
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-33", 
                                                        4
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
                                                        "obj-71", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-2", 
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
                                    "text": "p pad /note encode", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-74", 
                                    "patching_rect": [
                                        139.928574, 
                                        142.736633, 
                                        113.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.cond /cc < 23\\; /cc >= 23 && /cc <= 70\\; /cc >= 71", 
                                    "numinlets": 1, 
                                    "numoutlets": 4, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-48", 
                                    "patching_rect": [
                                        311.486328, 
                                        100.0, 
                                        276.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.cond /note <= 26\\; /note >=36", 
                                    "numinlets": 1, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-21", 
                                    "patching_rect": [
                                        61.928574, 
                                        100.0, 
                                        175.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.cond /cc < 16\\; /cc >= 16 && /cc < 18\\; /cc >= 18", 
                                    "numinlets": 1, 
                                    "maxclass": "newobj", 
                                    "numoutlets": 4, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "linecount": 2, 
                                    "fontsize": 12.0, 
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        516.614502, 
                                        213.001251, 
                                        155.0, 
                                        33.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.cond /cc < 4\\; /cc >= 4 && /cc < 6\\; /cc >= 6 && /cc < 11\\; /cc == 11 && /cc < 12", 
                                    "numinlets": 1, 
                                    "maxclass": "newobj", 
                                    "numoutlets": 5, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "linecount": 3, 
                                    "fontsize": 12.0, 
                                    "id": "obj-29", 
                                    "patching_rect": [
                                        259.172241, 
                                        206.001251, 
                                        204.0, 
                                        47.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.cond /cc < 12\\; /cc >= 12 && /cc < 23", 
                                    "numinlets": 1, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-24", 
                                    "patching_rect": [
                                        296.0, 
                                        155.736603, 
                                        241.628159, 
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
                                                    "id": "obj-11", 
                                                    "patching_rect": [
                                                        1074.0, 
                                                        360.0, 
                                                        150.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.prepend /button", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-20", 
                                                    "patching_rect": [
                                                        996.583313, 
                                                        465.200043, 
                                                        105.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.prepend /large/arrowbutton", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-16", 
                                                    "patching_rect": [
                                                        825.583313, 
                                                        465.200043, 
                                                        165.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.prepend /button", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-15", 
                                                    "patching_rect": [
                                                        642.050049, 
                                                        466.200043, 
                                                        105.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.prepend /arrowbutton", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-14", 
                                                    "patching_rect": [
                                                        494.649994, 
                                                        465.200043, 
                                                        135.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.prepend /disc", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-13", 
                                                    "patching_rect": [
                                                        369.5, 
                                                        465.200043, 
                                                        93.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.prepend /slider", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-10", 
                                                    "patching_rect": [
                                                        106.0, 
                                                        466.700043, 
                                                        100.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.route /button /index /note /velocity", 
                                                    "numinlets": 5, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 5, 
                                                    "outlettype": [
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 3, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-9", 
                                                    "patching_rect": [
                                                        931.583313, 
                                                        308.700043, 
                                                        84.0, 
                                                        47.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.route /large/arrowbutton /index /note /velocity", 
                                                    "numinlets": 5, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 5, 
                                                    "outlettype": [
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 3, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-8", 
                                                    "patching_rect": [
                                                        710.583313, 
                                                        308.700043, 
                                                        126.0, 
                                                        47.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.route /button /index /note /velocity", 
                                                    "numinlets": 5, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 5, 
                                                    "outlettype": [
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 3, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-7", 
                                                    "patching_rect": [
                                                        577.050049, 
                                                        308.700043, 
                                                        105.0, 
                                                        47.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.route /arrowbutton /index /note /velocity", 
                                                    "numinlets": 5, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 5, 
                                                    "outlettype": [
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 4, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-6", 
                                                    "patching_rect": [
                                                        429.649994, 
                                                        308.700043, 
                                                        84.0, 
                                                        60.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.route /disc /index /note /velocity", 
                                                    "numinlets": 5, 
                                                    "numoutlets": 5, 
                                                    "outlettype": [
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-5", 
                                                    "patching_rect": [
                                                        206.5, 
                                                        308.700043, 
                                                        188.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.route /slider /note /velocity", 
                                                    "numinlets": 4, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 4, 
                                                    "outlettype": [
                                                        "", 
                                                        "", 
                                                        "", 
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 3, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-4", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        308.700043, 
                                                        75.0, 
                                                        47.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /button = [\\\"/rhombus\\\"] [[/index]]\\; assign(/button + \\\"/velocity\\\"\\, /velocity)", 
                                                    "numinlets": 1, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 6, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-19", 
                                                    "patching_rect": [
                                                        577.050049, 
                                                        174.800018, 
                                                        105.0, 
                                                        87.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /index = /note * 0", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-17", 
                                                    "patching_rect": [
                                                        577.050049, 
                                                        100.0, 
                                                        138.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /index = /note - 4", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-18", 
                                                    "patching_rect": [
                                                        219.0, 
                                                        100.0, 
                                                        137.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /button = [\\\"/a\\\"\\, \\\"/b\\\"\\, \\\"/c\\\"] [[/index]]\\; assign(/button + \\\"/velocity\\\"\\, /velocity)", 
                                                    "numinlets": 1, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 3, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-54", 
                                                    "patching_rect": [
                                                        925.583313, 
                                                        137.300018, 
                                                        228.0, 
                                                        47.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /index = /note - 24", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-53", 
                                                    "patching_rect": [
                                                        925.583313, 
                                                        100.0, 
                                                        144.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /large/arrowbutton = [\\\"/a/2\\\"\\,\\\"/a/1\\\"\\,\\\"/b/2\\\"\\,\\\"/b/1\\\"] [[/index]]\\; assign(/large/arrowbutton + \\\"/velocity\\\"\\, /velocity)\\;", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-49", 
                                                    "patching_rect": [
                                                        727.583313, 
                                                        222.300018, 
                                                        659.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /index = /note - 20", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-47", 
                                                    "patching_rect": [
                                                        727.583313, 
                                                        100.0, 
                                                        144.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /index = /note - 11", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-35", 
                                                    "patching_rect": [
                                                        429.649994, 
                                                        100.0, 
                                                        143.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /arrowbutton = [\\\"/a/4\\\"\\, \\\"/b/4\\\"\\, \\\"/a/3\\\"\\, \\\"/b/3\\\"\\, \\\"/a/2\\\"\\, \\\"/b/2\\\"\\, \\\"/a/1\\\"\\, \\\"/b/1\\\"] [[/index]]\\; assign(/arrowbutton + \\\"/velocity\\\"\\, /velocity)", 
                                                    "numinlets": 1, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 8, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-44", 
                                                    "patching_rect": [
                                                        429.649994, 
                                                        161.300018, 
                                                        128.0, 
                                                        114.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /disc = [\\\"/a\\\"\\, \\\"/b\\\"] [[/index]]\\; assign(/disc + \\\"/velocity\\\"\\, /velocity)", 
                                                    "numinlets": 1, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 2, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-26", 
                                                    "patching_rect": [
                                                        206.5, 
                                                        161.300018, 
                                                        210.0, 
                                                        33.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /note = scale(/note\\, 6\\, 10\\, 4\\, 8)", 
                                                    "numinlets": 1, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 3, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-22", 
                                                    "patching_rect": [
                                                        86.75, 
                                                        100.0, 
                                                        112.0, 
                                                        47.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "o.expr /slider = [\\\"/4\\\"\\, \\\"/3\\\"\\, \\\"/2\\\"\\, \\\"/1\\\"\\, \\\"/a\\\"\\, \\\"/b\\\"\\, \\\"/c\\\"\\, \\\"/d\\\"\\, \\\"/long\\\"] [[/note]]\\; assign(/slider + \\\"/velocity\\\"\\, /velocity)", 
                                                    "numinlets": 1, 
                                                    "maxclass": "newobj", 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "FullPacket"
                                                    ], 
                                                    "linecount": 6, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-25", 
                                                    "patching_rect": [
                                                        50.0, 
                                                        161.300018, 
                                                        136.0, 
                                                        87.0
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
                                                    "id": "obj-24", 
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
                                                    "id": "obj-27", 
                                                    "patching_rect": [
                                                        86.75, 
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
                                                    "id": "obj-28", 
                                                    "patching_rect": [
                                                        219.0, 
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
                                                    "id": "obj-29", 
                                                    "patching_rect": [
                                                        429.649994, 
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
                                                    "id": "obj-30", 
                                                    "patching_rect": [
                                                        577.050049, 
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
                                                    "id": "obj-31", 
                                                    "patching_rect": [
                                                        727.583313, 
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
                                                    "id": "obj-32", 
                                                    "patching_rect": [
                                                        925.583313, 
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
                                                    "id": "obj-33", 
                                                    "patching_rect": [
                                                        106.0, 
                                                        546.700073, 
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
                                                        369.5, 
                                                        546.700073, 
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
                                                        494.649994, 
                                                        546.700073, 
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
                                                        642.050049, 
                                                        546.700073, 
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
                                                        825.583313, 
                                                        546.700073, 
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
                                                        996.583313, 
                                                        546.700073, 
                                                        25.0, 
                                                        25.0
                                                    ]
                                                }
                                            }
                                        ], 
                                        "default_fontface": 0, 
                                        "gridonopen": 0, 
                                        "rect": [
                                            39.0, 
                                            101.0, 
                                            1401.0, 
                                            727.0
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
                                                        "obj-33", 
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
                                                        "obj-34", 
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
                                                        "obj-36", 
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
                                                        "obj-37", 
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
                                                        "obj-38", 
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
                                                        "obj-26", 
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
                                                        "obj-7", 
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
                                                        "obj-39", 
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
                                                        "obj-25", 
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
                                                        "obj-25", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-25", 
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
                                                        "obj-26", 
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
                                                        "obj-27", 
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
                                                        "obj-28", 
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
                                                        "obj-29", 
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
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-31", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-47", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-32", 
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
                                                        "obj-35", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-44", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-4", 
                                                        3
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-10", 
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
                                                        "obj-6", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-47", 
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
                                                        "obj-49", 
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
                                                        "obj-5", 
                                                        4
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
                                                        "obj-53", 
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
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-54", 
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
                                                        "obj-6", 
                                                        4
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
                                                        "obj-7", 
                                                        4
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
                                                        4
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
                                                        "obj-9", 
                                                        4
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-20", 
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
                                    "text": "p others /note encode", 
                                    "numinlets": 7, 
                                    "numoutlets": 6, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-40", 
                                    "patching_rect": [
                                        27.0, 
                                        329.736633, 
                                        127.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.cond /note <= 3\\; /note >= 6 && /note <= 10\\; /note >= 4 && /note <= 5\\; /note >= 11 && /note <= 18\\; /note == 19\\; /note >= 20 && /note <= 23\\; /note >= 24 && /note <= 26", 
                                    "numinlets": 1, 
                                    "maxclass": "newobj", 
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
                                    "linecount": 4, 
                                    "fontsize": 12.0, 
                                    "id": "obj-11", 
                                    "patching_rect": [
                                        19.0, 
                                        236.736603, 
                                        248.0, 
                                        60.0
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
                                    "id": "obj-46", 
                                    "patching_rect": [
                                        61.928574, 
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
                                    "id": "obj-47", 
                                    "patching_rect": [
                                        311.486328, 
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
                                    "id": "obj-49", 
                                    "patching_rect": [
                                        376.761108, 
                                        617.503723, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            139.0, 
                            84.0, 
                            1414.0, 
                            762.0
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
                                        "obj-49", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-11", 
                                        6
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-40", 
                                        6
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-11", 
                                        5
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-40", 
                                        5
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-11", 
                                        4
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-40", 
                                        4
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-11", 
                                        3
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-40", 
                                        3
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-11", 
                                        2
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-40", 
                                        2
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-11", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-40", 
                                        1
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
                                        "obj-40", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-115", 
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
                                        "obj-123", 
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
                                        "obj-126", 
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
                                        "obj-130", 
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
                                        "obj-134", 
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
                                        "obj-137", 
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
                                        "obj-21", 
                                        0
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
                                        "obj-21", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-74", 
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
                                        "obj-29", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-24", 
                                        1
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
                                        "obj-29", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-115", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-29", 
                                        3
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-123", 
                                        4
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-29", 
                                        2
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-123", 
                                        1
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
                                        "obj-123", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-40", 
                                        5
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
                                        "obj-40", 
                                        4
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
                                        "obj-40", 
                                        3
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
                                        "obj-40", 
                                        2
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
                                        "obj-40", 
                                        1
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
                                        "obj-40", 
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
                                        "obj-46", 
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
                                        "obj-47", 
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
                                        "obj-48", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-10", 
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
                                        "obj-24", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-48", 
                                        2
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
                                        "obj-130", 
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
                                        "obj-134", 
                                        0
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
                                        "obj-137", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-6", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-115", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-6", 
                                        2
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-123", 
                                        3
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
                                        "obj-123", 
                                        2
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-74", 
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
                                        "obj-8", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-126", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-8", 
                                        1
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
                    "text": "p situate", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-50", 
                    "patching_rect": [
                        38.0, 
                        110.220169, 
                        56.0, 
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
                                                    "text": "t b 1", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 2, 
                                                    "outlettype": [
                                                        "bang", 
                                                        "int"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-19", 
                                                    "patching_rect": [
                                                        376.0, 
                                                        339.0, 
                                                        34.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "bang@timeout", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 0, 
                                                    "maxclass": "comment", 
                                                    "frgb": 0.0, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-15", 
                                                    "patching_rect": [
                                                        668.0, 
                                                        579.0, 
                                                        150.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "t 0", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "int"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-13", 
                                                    "patching_rect": [
                                                        399.0, 
                                                        414.0, 
                                                        24.0, 
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
                                                    "id": "obj-6", 
                                                    "patching_rect": [
                                                        546.0, 
                                                        592.0, 
                                                        25.0, 
                                                        25.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "arg1: delay time in sec.", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 0, 
                                                    "maxclass": "comment", 
                                                    "frgb": 0.0, 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-8", 
                                                    "patching_rect": [
                                                        711.0, 
                                                        158.0, 
                                                        137.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "numinlets": 2, 
                                                    "numoutlets": 2, 
                                                    "outlettype": [
                                                        "", 
                                                        ""
                                                    ], 
                                                    "maxclass": "gswitch2", 
                                                    "parameter_enable": 0, 
                                                    "id": "obj-34", 
                                                    "patching_rect": [
                                                        399.0, 
                                                        236.0, 
                                                        39.0, 
                                                        32.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "/ 1000.", 
                                                    "numinlets": 2, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "float"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-10", 
                                                    "patching_rect": [
                                                        631.0, 
                                                        214.0, 
                                                        47.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "route float", 
                                                    "numinlets": 2, 
                                                    "numoutlets": 2, 
                                                    "outlettype": [
                                                        "", 
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-9", 
                                                    "patching_rect": [
                                                        631.0, 
                                                        186.0, 
                                                        64.0, 
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
                                                    "id": "obj-7", 
                                                    "patching_rect": [
                                                        631.0, 
                                                        105.0, 
                                                        60.0, 
                                                        20.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "patcherargs", 
                                                    "numinlets": 1, 
                                                    "numoutlets": 2, 
                                                    "outlettype": [
                                                        "", 
                                                        ""
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-5", 
                                                    "patching_rect": [
                                                        631.0, 
                                                        158.0, 
                                                        74.0, 
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
                                                    "id": "obj-12", 
                                                    "patching_rect": [
                                                        539.75, 
                                                        338.0, 
                                                        55.0, 
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
                                                    "id": "obj-11", 
                                                    "patching_rect": [
                                                        406.0, 
                                                        602.0, 
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
                                                        493.0, 
                                                        71.0, 
                                                        25.0, 
                                                        25.0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "box": {
                                                    "fontname": "Arial", 
                                                    "text": "delay 3.", 
                                                    "numinlets": 2, 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        "bang"
                                                    ], 
                                                    "maxclass": "newobj", 
                                                    "fontsize": 12.0, 
                                                    "id": "obj-16", 
                                                    "patching_rect": [
                                                        419.0, 
                                                        285.0, 
                                                        53.0, 
                                                        20.0
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
                                                        474.0, 
                                                        114.0, 
                                                        32.5, 
                                                        20.0
                                                    ]
                                                }
                                            }
                                        ], 
                                        "default_fontface": 0, 
                                        "gridonopen": 0, 
                                        "rect": [
                                            320.0, 
                                            44.0, 
                                            1171.0, 
                                            731.0
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
                                                        "obj-16", 
                                                        1
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
                                                        "obj-11", 
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
                                                        "obj-13", 
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
                                                        "obj-34", 
                                                        0
                                                    ], 
                                                    "midpoints": [
                                                        408.5, 
                                                        458.0, 
                                                        312.5, 
                                                        458.0, 
                                                        312.5, 
                                                        137.0, 
                                                        408.5, 
                                                        137.0
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
                                                        "obj-18", 
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
                                                        "obj-12", 
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
                                                        "obj-12", 
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
                                                        "obj-34", 
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
                                                        "obj-34", 
                                                        0
                                                    ], 
                                                    "midpoints": [
                                                        400.5, 
                                                        368.0, 
                                                        325.5, 
                                                        368.0, 
                                                        325.5, 
                                                        226.0, 
                                                        408.5, 
                                                        226.0
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
                                                        "obj-6", 
                                                        0
                                                    ]
                                                }
                                            }, 
                                            {
                                                "patchline": {
                                                    "disabled": 0, 
                                                    "source": [
                                                        "obj-34", 
                                                        1
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
                                                        "obj-34", 
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
                                                        "obj-5", 
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
                                                        "obj-7", 
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
                                                        "obj-9", 
                                                        0
                                                    ], 
                                                    "hidden": 0, 
                                                    "destination": [
                                                        "obj-10", 
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
                                    "text": "p fusion", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "bang"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        110.0, 
                                        90.0, 
                                        53.0, 
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
                                    "id": "obj-18", 
                                    "patching_rect": [
                                        428.314087, 
                                        100.0, 
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
                                    "id": "obj-16", 
                                    "patching_rect": [
                                        428.314087, 
                                        135.036072, 
                                        60.0, 
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
                                                    "fontname": "Arial", 
                                                    "text": "/disc/b/pressure : 0.,\n/disc/b/velocity : 0.,\n/disc/b/direction : 0.,\n/disc/a/pressure : 0.,\n/disc/a/velocity : 0.,\n/disc/a/direction : 0.,\n/button/rhombus/pressure : 0.,\n/button/rhombus/velocity : 0.,\n/button/c/velocity : 0.,\n/button/c/pressure : 0.,\n/button/b/pressure : 0.,\n/button/b/velocity : 0.,\n/button/a/velocity : 0.,\n/button/a/pressure : 0.,\n/large.arrowbutton/b/1/pressure : 0.,\n/large.arrowbutton/b/1/velocity : 0.,\n/large.arrowbutton/b/2/pressure : 0.,\n/large.arrowbutton/b/2/velocity : 0.,\n/large.arrowbutton/a/1/pressure : 0.,\n/large.arrowbutton/a/1/velocity : 0.,\n/large.arrowbutton/a/2/velocity : 0.,\n/large.arrowbutton/a/2/pressure : 0.,\n/arrowbutton/b/1/velocity : 0.,\n/arrowbutton/b/1/pressure : 0.,\n/arrowbutton/a/1/velocity : 0.,\n/arrowbutton/a/1/pressure : 0.,\n/arrowbutton/b/2/pressure : 0.,\n/arrowbutton/b/2/velocity : 0.,\n/arrowbutton/a/2/pressure : 0.,\n/arrowbutton/a/2/velocity : 0.,\n/arrowbutton/b/3/velocity : 0.,\n/arrowbutton/b/3/pressure : 0.,\n/arrowbutton/a/3/velocity : 0.,\n/arrowbutton/a/3/pressure : 0.,\n/arrowbutton/b/4/pressure : 0.,\n/arrowbutton/b/4/velocity : 0.,\n/arrowbutton/a/4/pressure : 0.,\n/arrowbutton/a/4/velocity : 0.,\n/slider/long/velocity : 0.,\n/slider/long/pressure : 0.,\n/slider/long/2nd/position : 0.,\n/slider/long/position : 0.,\n/slider/d/velocity : 0.,\n/slider/d/position : 0.,\n/slider/d/pressure : 0.,\n/slider/c/pressure : 0.,\n/slider/c/position : 0.,\n/slider/c/velocity : 0.,\n/slider/b/position : 0.,\n/slider/b/pressure : 0.,\n/slider/b/velocity : 0.,\n/slider/a/velocity : 0.,\n/slider/a/pressure : 0.,\n/slider/a/position : 0.,\n/slider/1/velocity : 0.,\n/slider/1/pressure : 0.,\n/slider/1/position : 0.,\n/slider/2/velocity : 0.,\n/slider/2/pressure : 0.,\n/slider/2/position : 0.,\n/slider/3/pressure : 0.,\n/slider/3/velocity : 0.,\n/slider/3/position : 0.,\n/slider/4/pressure : 0.,\n/slider/4/position : 0.,\n/slider/4/velocity : 0.,\n/pad/d/4/velocity : 0.,\n/pad/d/4/pressure : 0.,\n/pad/d/4/x : 0.,\n/pad/d/4/y : 0.,\n/pad/c/4/velocity : 0.,\n/pad/c/4/pressure : 0.,\n/pad/c/4/x : 0.,\n/pad/c/4/y : 0.,\n/pad/b/4/pressure : 0.,\n/pad/b/4/x : 0.,\n/pad/b/4/y : 0.,\n/pad/b/4/velocity : 0.,\n/pad/a/4/x : 0.,\n/pad/a/4/y : 0.,\n/pad/a/4/velocity : 0.,\n/pad/a/4/pressure : 0.,\n/pad/d/3/pressure : 0.,\n/pad/d/3/y : 0.,\n/pad/d/3/velocity : 0.,\n/pad/d/3/x : 0.,\n/pad/c/3/velocity : 0.,\n/pad/c/3/pressure : 0.,\n/pad/c/3/x : 0.,\n/pad/c/3/y : 0.,\n/pad/b/3/pressure : 0.,\n/pad/b/3/x : 0.,\n/pad/b/3/y : 0.,\n/pad/b/3/velocity : 0.,\n/pad/a/3/pressure : 0.,\n/pad/a/3/y : 0.,\n/pad/a/3/velocity : 0.,\n/pad/a/3/x : 0.,\n/pad/d/2/pressure : 0.,\n/pad/d/2/y : 0.,\n/pad/d/2/velocity : 0.,\n/pad/d/2/x : 0.,\n/pad/c/2/pressure : 0.,\n/pad/c/2/y : 0.,\n/pad/c/2/velocity : 0.,\n/pad/c/2/x : 0.,\n/pad/b/2/pressure : 0.,\n/pad/b/2/x : 0.,\n/pad/b/2/y : 0.,\n/pad/b/2/velocity : 0.,\n/pad/a/2/pressure : 0.,\n/pad/a/2/x : 0.,\n/pad/a/2/y : 0.,\n/pad/a/2/velocity : 0.,\n/pad/d/1/velocity : 0.,\n/pad/d/1/pressure : 0.,\n/pad/d/1/x : 0.,\n/pad/d/1/y : 0.,\n/pad/c/1/x : 0.,\n/pad/c/1/y : 0.,\n/pad/c/1/velocity : 0.,\n/pad/c/1/pressure : 0.,\n/pad/b/1/pressure : 0.,\n/pad/b/1/y : 0.,\n/pad/b/1/velocity : 0.,\n/pad/b/1/x : 0.,\n/pad/a/1/velocity : 0.,\n/pad/a/1/pressure : 0.,\n/pad/a/1/x : 0.,\n/pad/a/1/y : 0.", 
                                                    "numinlets": 2, 
                                                    "maxclass": "o.message", 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "linecount": 130, 
                                                    "fontsize": 12.0, 
                                                    "textcolor": [
                                                        0.0, 
                                                        0.0, 
                                                        0.0, 
                                                        1.0
                                                    ], 
                                                    "id": "obj-132", 
                                                    "patching_rect": [
                                                        257.0, 
                                                        129.0, 
                                                        320.0, 
                                                        1749.0
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
                                                        531.0, 
                                                        1235.0, 
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
                                                        "bang"
                                                    ], 
                                                    "maxclass": "inlet", 
                                                    "id": "obj-3", 
                                                    "patching_rect": [
                                                        257.0, 
                                                        73.0, 
                                                        25.0, 
                                                        25.0
                                                    ]
                                                }
                                            }
                                        ], 
                                        "default_fontface": 0, 
                                        "gridonopen": 0, 
                                        "rect": [
                                            298.0, 
                                            44.0, 
                                            1142.0, 
                                            781.0
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
                                                        "obj-4", 
                                                        0
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
                                                        "obj-132", 
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
                                    "text": "p state cache", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-142", 
                                    "patching_rect": [
                                        428.314087, 
                                        174.036072, 
                                        82.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "<< bang at timeout", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-110", 
                                    "patching_rect": [
                                        259.0, 
                                        160.0, 
                                        150.0, 
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
                                    "id": "obj-100", 
                                    "patching_rect": [
                                        240.0, 
                                        160.0, 
                                        20.0, 
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
                                                    "text": "/pad/a/4/x : 0.535433,\n/pad/a/4/y : 0.023622,\n/pad/a/4/pressure : 0.,\n/pad/b/4/pressure : 0.,\n/pad/a/4/velocity : 0.,\n/pad/b/4/x : 0.566929,\n/pad/b/4/y : 0.173228,\n/pad/b/4/velocity : 0.,\n/pad/c/4/pressure : 0.,\n/pad/c/4/x : 0.0314961,\n/pad/c/4/y : 0.354331,\n/pad/c/4/velocity : 0.,\n/pad/d/3/x : 0.0629921,\n/pad/d/3/y : 1.,\n/pad/d/3/velocity : 0.,\n/pad/d/3/pressure : 0.,\n/disc/b/pressure : 0.,\n/disc/b/velocity : 0.,\n/disc/b/direction : 0.,\n/disc/a/pressure : 0.,\n/disc/a/velocity : 0.,\n/disc/a/direction : 0.,\n/button/rhombus/pressure : 0.,\n/button/rhombus/velocity : 0.,\n/button/c/velocity : 0.,\n/button/c/pressure : 0.,\n/button/b/pressure : 0.,\n/button/b/velocity : 0.,\n/button/a/velocity : 0.,\n/button/a/pressure : 0.,\n/large.arrowbutton/b/1/pressure : 0.,\n/large.arrowbutton/b/1/velocity : 0.,\n/large.arrowbutton/b/2/pressure : 0.,\n/large.arrowbutton/b/2/velocity : 0.,\n/large.arrowbutton/a/1/pressure : 0.,\n/large.arrowbutton/a/1/velocity : 0.,\n/large.arrowbutton/a/2/velocity : 0.,\n/large.arrowbutton/a/2/pressure : 0.,\n/arrowbutton/b/1/velocity : 0.,\n/arrowbutton/b/1/pressure : 0.,\n/arrowbutton/a/1/velocity : 0.,\n/arrowbutton/a/1/pressure : 0.,\n/arrowbutton/b/2/pressure : 0.,\n/arrowbutton/b/2/velocity : 0.,\n/arrowbutton/a/2/pressure : 0.,\n/arrowbutton/a/2/velocity : 0.,\n/arrowbutton/b/3/velocity : 0.,\n/arrowbutton/b/3/pressure : 0.,\n/arrowbutton/a/3/velocity : 0.,\n/arrowbutton/a/3/pressure : 0.,\n/arrowbutton/b/4/pressure : 0.,\n/arrowbutton/b/4/velocity : 0.,\n/arrowbutton/a/4/pressure : 0.,\n/arrowbutton/a/4/velocity : 0.,\n/slider/long/velocity : 0.,\n/slider/long/pressure : 0.,\n/slider/long/2nd/position : 0.,\n/slider/long/position : 0.,\n/slider/d/velocity : 0.,\n/slider/d/position : 0.,\n/slider/d/pressure : 0.,\n/slider/c/pressure : 0.,\n/slider/c/position : 0.,\n/slider/c/velocity : 0.,\n/slider/b/position : 0.,\n/slider/b/pressure : 0.,\n/slider/b/velocity : 0.,\n/slider/a/velocity : 0.,\n/slider/a/pressure : 0.,\n/slider/a/position : 0.,\n/slider/1/velocity : 0.,\n/slider/1/pressure : 0.,\n/slider/1/position : 0.,\n/slider/2/velocity : 0.,\n/slider/2/pressure : 0.,\n/slider/2/position : 0.,\n/slider/3/pressure : 0.,\n/slider/3/velocity : 0.,\n/slider/3/position : 0.,\n/slider/4/pressure : 0.,\n/slider/4/position : 0.,\n/slider/4/velocity : 0.,\n/pad/d/4/velocity : 0.,\n/pad/d/4/pressure : 0.,\n/pad/d/4/x : 0.,\n/pad/d/4/y : 0.,\n/pad/c/3/velocity : 0.,\n/pad/c/3/pressure : 0.,\n/pad/c/3/x : 0.,\n/pad/c/3/y : 0.,\n/pad/b/3/pressure : 0.,\n/pad/b/3/x : 0.,\n/pad/b/3/y : 0.,\n/pad/b/3/velocity : 0.,\n/pad/a/3/pressure : 0.,\n/pad/a/3/y : 0.,\n/pad/a/3/velocity : 0.,\n/pad/a/3/x : 0.,\n/pad/d/2/pressure : 0.,\n/pad/d/2/y : 0.,\n/pad/d/2/velocity : 0.,\n/pad/d/2/x : 0.,\n/pad/c/2/pressure : 0.,\n/pad/c/2/y : 0.,\n/pad/c/2/velocity : 0.,\n/pad/c/2/x : 0.,\n/pad/b/2/pressure : 0.,\n/pad/b/2/x : 0.,\n/pad/b/2/y : 0.,\n/pad/b/2/velocity : 0.,\n/pad/a/2/pressure : 0.,\n/pad/a/2/x : 0.,\n/pad/a/2/y : 0.,\n/pad/a/2/velocity : 0.,\n/pad/d/1/velocity : 0.,\n/pad/d/1/pressure : 0.,\n/pad/d/1/x : 0.,\n/pad/d/1/y : 0.,\n/pad/c/1/x : 0.,\n/pad/c/1/y : 0.,\n/pad/c/1/velocity : 0.,\n/pad/c/1/pressure : 0.,\n/pad/b/1/pressure : 0.,\n/pad/b/1/y : 0.,\n/pad/b/1/velocity : 0.,\n/pad/b/1/x : 0.,\n/pad/a/1/velocity : 0.,\n/pad/a/1/pressure : 0.,\n/pad/a/1/x : 0.,\n/pad/a/1/y : 0.", 
                                                    "numinlets": 2, 
                                                    "maxclass": "o.message", 
                                                    "numoutlets": 1, 
                                                    "outlettype": [
                                                        ""
                                                    ], 
                                                    "linecount": 138, 
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
                                                        1857.0
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
                                    "text": "p o.message", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-86", 
                                    "patching_rect": [
                                        28.0, 
                                        266.599976, 
                                        79.0, 
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
                                        110.0, 
                                        221.289978, 
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
                                        110.0, 
                                        40.0, 
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
                                        110.0, 
                                        357.536072, 
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
                            223.0, 
                            640.0, 
                            480.0
                        ], 
                        "lines": [
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-100", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-86", 
                                        0
                                    ], 
                                    "midpoints": [
                                        249.5, 
                                        185.955017, 
                                        37.5, 
                                        185.955017
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-131", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-44", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-131", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-86", 
                                        1
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-142", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-131", 
                                        1
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
                                        "obj-142", 
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
                                        "obj-16", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-43", 
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
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-100", 
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
                                        "obj-131", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-86", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-131", 
                                        1
                                    ], 
                                    "midpoints": [
                                        37.5, 
                                        295.599976, 
                                        230.0, 
                                        295.599976, 
                                        230.0, 
                                        194.289978, 
                                        150.5, 
                                        194.289978
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
                    "text": "p state caching", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-45", 
                    "patching_rect": [
                        38.0, 
                        163.963928, 
                        91.0, 
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
                                    "text": "o.expr /value = scale(/value\\, 0.\\, 127\\, 0\\, 1)", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-39", 
                                    "patching_rect": [
                                        455.371826, 
                                        384.114075, 
                                        231.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/cc : \"$1\",\n/value : \"$2\"", 
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
                                    "id": "obj-4", 
                                    "patching_rect": [
                                        455.371826, 
                                        333.510254, 
                                        113.0, 
                                        33.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.expr /velocity = scale(/velocity\\, 0.\\, 127\\, 0\\, 1)", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-40", 
                                    "patching_rect": [
                                        90.871826, 
                                        378.011505, 
                                        253.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/note : \"$1\",\n/velocity : \"$2\"", 
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
                                    "id": "obj-15", 
                                    "patching_rect": [
                                        90.871826, 
                                        309.615356, 
                                        150.0, 
                                        33.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "pack", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-17", 
                                    "patching_rect": [
                                        90.871826, 
                                        226.0, 
                                        36.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "pack", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-13", 
                                    "patching_rect": [
                                        280.371826, 
                                        226.0, 
                                        36.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /control-change/controller-number /control-change/value", 
                                    "numinlets": 3, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-12", 
                                    "patching_rect": [
                                        280.371826, 
                                        176.231094, 
                                        381.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /note/pitch /note/velocity", 
                                    "numinlets": 3, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-11", 
                                    "patching_rect": [
                                        90.871826, 
                                        176.231094, 
                                        180.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.select /note /control-change", 
                                    "numinlets": 3, 
                                    "numoutlets": 3, 
                                    "outlettype": [
                                        "", 
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        90.871826, 
                                        125.731094, 
                                        168.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.route /MIDI", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        90.871826, 
                                        100.0, 
                                        80.0, 
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
                                    "id": "obj-7", 
                                    "patching_rect": [
                                        90.871826, 
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
                                    "id": "obj-9", 
                                    "patching_rect": [
                                        90.871826, 
                                        431.011505, 
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
                                    "id": "obj-20", 
                                    "patching_rect": [
                                        455.371826, 
                                        431.011505, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            267.0, 
                            90.0, 
                            1004.0, 
                            756.0
                        ], 
                        "lines": [
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-11", 
                                        1
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
                                        "obj-11", 
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
                                        "obj-12", 
                                        1
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-13", 
                                        1
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
                                        "obj-13", 
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
                                        "obj-15", 
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
                                        "obj-17", 
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
                                        "obj-2", 
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
                                        "obj-3", 
                                        0
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
                                        "obj-3", 
                                        1
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
                                        "obj-39", 
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
                                        "obj-4", 
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
                                        "obj-40", 
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
                                        "obj-7", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-2", 
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
                    "text": "p neutralize", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-23", 
                    "patching_rect": [
                        38.0, 
                        69.711151, 
                        73.0, 
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
                    "id": "obj-22", 
                    "patching_rect": [
                        38.0, 
                        260.0, 
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
                    "id": "obj-19", 
                    "patching_rect": [
                        38.0, 
                        22.0, 
                        25.0, 
                        25.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            545.0, 
            83.0, 
            499.0, 
            595.0
        ], 
        "lines": [
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-19", 
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
                        "obj-23", 
                        1
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-50", 
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
                        "obj-50", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-45", 
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
                        "obj-50", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-45", 
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