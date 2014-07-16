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
            8.0, 
            8.0
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
            "architecture": "x86", 
            "minor": 1, 
            "revision": 6
        }, 
        "boxes": [
            {
                "box": {
                    "fontname": "Arial", 
                    "text": " \"o.\" objects  convert dictionaries into  \"o.\" bundles", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-7", 
                    "patching_rect": [
                        176.0, 
                        274.938354, 
                        277.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/bar : [\"a\", \"r\", \"s\"],\n/foo : [1, 2, 3]", 
                    "numinlets": 1, 
                    "maxclass": "o.display", 
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
                        270.0, 
                        318.938354, 
                        89.0, 
                        47.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/foo : [1, 2, 3],\n/bar : [\"a\", \"r\", \"s\"]", 
                    "numinlets": 1, 
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
                    "id": "obj-2", 
                    "patching_rect": [
                        59.0, 
                        214.938354, 
                        150.0, 
                        37.0
                    ]
                }
            }, 
            {
                "box": {
                    "numoutlets": 0, 
                    "maxclass": "dict.view", 
                    "id": "obj-4", 
                    "numinlets": 1, 
                    "patching_rect": [
                        59.0, 
                        324.938354, 
                        150.0, 
                        54.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.dict", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        59.0, 
                        274.938354, 
                        39.0, 
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
                        433.0, 
                        110.938354, 
                        150.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.helpfilehelper @obj o.dict", 
                    "numinlets": 1, 
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
                        448.0, 
                        53.938354, 
                        155.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.dict takes an OSC bundle and turns it into a Max dictionary.", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-9", 
                    "patching_rect": [
                        21.0, 
                        167.938354, 
                        335.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "Convert an OSC bundle to a dictionary.", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-8", 
                    "patching_rect": [
                        21.0, 
                        119.938354, 
                        218.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.dict", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 72.0, 
                    "id": "obj-18", 
                    "patching_rect": [
                        21.0, 
                        30.938354, 
                        183.0, 
                        87.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "items": "", 
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
                    "id": "obj-19", 
                    "patching_rect": [
                        433.0, 
                        132.938354, 
                        132.0, 
                        20.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            161.0, 
            44.0, 
            998.0, 
            510.0
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
                        "obj-4", 
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
                        "obj-5", 
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
                        "obj-18", 
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
                        "obj-19", 
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
                        "obj-19", 
                        1
                    ], 
                    "hidden": 1, 
                    "destination": [
                        "obj-10", 
                        0
                    ], 
                    "midpoints": [
                        499.0, 
                        162.0, 
                        420.0, 
                        162.0, 
                        420.0, 
                        48.0, 
                        457.5, 
                        48.0
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
                        "obj-1", 
                        0
                    ], 
                    "source": [
                        "obj-2", 
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
                "patcherrelativepath": "../misc", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.helpfilehelper.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/misc"
            }, 
            {
                "type": "iLaX", 
                "name": "o.dict.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
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