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
            "revision": 4
        }, 
        "boxes": [
            {
                "box": {
                    "fontname": "Arial", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "int", 
                        "bang"
                    ], 
                    "maxclass": "number", 
                    "minimum": 2, 
                    "fontsize": 12.0, 
                    "parameter_enable": 0, 
                    "id": "obj-22", 
                    "patching_rect": [
                        255.0, 
                        21.0, 
                        78.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/poll_ms : \"$1\"", 
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
                    "id": "obj-20", 
                    "patching_rect": [
                        255.0, 
                        45.0, 
                        78.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/left/x : 0.4779,\n/left/y : 0.424176,\n/left/z : 0.99243,\n/right/x : -0.705006,\n/right/y : 0.866178,\n/right/z : 0.99243,\n/footswitch : 0,\n/vendor : \"Madcatz\",\n/productname : \"Gametrak\"", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 9, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-8", 
                    "patching_rect": [
                        480.0, 
                        135.0, 
                        150.0, 
                        128.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/right/x : 0.581818,\n/right/y : 0.154545,\n/right/z : 0.601994,\n/left/x : 0.381818,\n/left/y : -0.436364,\n/left/z : 0.579826,\n/vendor : \"Madcatz\",\n/productname : \"Gametrak\"", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 8, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-3", 
                    "patching_rect": [
                        495.0, 
                        704.0, 
                        150.0, 
                        114.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/left/x : 0.0363636,\n/left/y : 0.6,\n/left/z : 0.601101,\n/right/x : 0.472727,\n/right/y : 0.245455,\n/right/z : 0.532653", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 6, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-7", 
                    "patching_rect": [
                        495.0, 
                        555.0, 
                        150.0, 
                        88.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/left/x : 0.145455,\n/left/y : 0.790909,\n/left/z : 0.804173,\n/right/x : 0.,\n/right/y : 0.,\n/right/z : 0.,\n/vendor : \"Madcatz\",\n/productname : \"Gametrak\"", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 8, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-6", 
                    "patching_rect": [
                        495.0, 
                        428.0, 
                        150.0, 
                        114.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.gametrak.display.maxhelp", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-38", 
                    "patching_rect": [
                        28.0, 
                        15.0, 
                        214.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "int": 1, 
                    "numinlets": 3, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "gswitch", 
                    "parameter_enable": 0, 
                    "id": "obj-5", 
                    "patching_rect": [
                        28.0, 
                        74.0, 
                        41.0, 
                        32.0
                    ]
                }
            }, 
            {
                "box": {
                    "name": "o.io.gametrak.display.maxpat", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "bpatcher", 
                    "offset": [
                        7.0, 
                        -19.0
                    ], 
                    "border": 1, 
                    "id": "obj-4", 
                    "patching_rect": [
                        28.0, 
                        483.0, 
                        431.0, 
                        268.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.gametrak @poll_ms 10", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-2", 
                    "patching_rect": [
                        39.0, 
                        45.0, 
                        157.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "name": "o.io.gametrak.display.maxpat", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "bpatcher", 
                    "offset": [
                        7.0, 
                        -19.0
                    ], 
                    "border": 1, 
                    "id": "obj-1", 
                    "patching_rect": [
                        28.0, 
                        135.0, 
                        431.0, 
                        268.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            14.0, 
            54.0, 
            658.0, 
            827.0
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
                        "obj-6", 
                        1
                    ], 
                    "midpoints": [
                        37.5, 
                        418.5, 
                        635.5, 
                        418.5
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
                        1
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
                        "obj-2", 
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
                        "obj-3", 
                        1
                    ], 
                    "midpoints": [
                        37.5, 
                        760.0, 
                        477.0, 
                        760.0, 
                        477.0, 
                        695.0, 
                        635.5, 
                        695.0
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
                        "obj-5", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-8", 
                        1
                    ], 
                    "midpoints": [
                        37.5, 
                        119.5, 
                        620.5, 
                        119.5
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
                    ], 
                    "midpoints": [
                        504.5, 
                        652.0, 
                        470.0, 
                        652.0, 
                        470.0, 
                        465.0, 
                        37.5, 
                        465.0
                    ]
                }
            }
        ], 
        "statusbarvisible": 2, 
        "gridsnaponopen": 0, 
        "bglocked": 0, 
        "dependency_cache": [
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.gametrak.display.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.lcd.xydraw.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.lcd.circle.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io"
            }, 
            {
                "patcherrelativepath": "..", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.gather.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.gametrak.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io"
            }, 
            {
                "patcherrelativepath": "..", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.maxplatform.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions"
            }, 
            {
                "type": "iLaX", 
                "name": "o.union.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.expr.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.intersection.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.collect.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.difference.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.prepend.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.pack.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.select.mxo"
            }
        ]
    }
}