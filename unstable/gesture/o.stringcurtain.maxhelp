{
    "patcher": {
        "fileversion": 1, 
        "imprint": 0, 
        "boxanimatetime": 200, 
        "devicewidth": 0.0, 
        "default_fontsize": 20.0, 
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
                    "text": "o.stringcurtain\n\nAdrian Freed 2012, 2013", 
                    "numinlets": 1, 
                    "linecount": 4, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 20.0, 
                    "id": "obj-13", 
                    "patching_rect": [
                        1090.0, 
                        27.0, 
                        150.0, 
                        96.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.expr /radius = l2norm([/x - /center/x\\, /y - /center/y])", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-14", 
                    "patching_rect": [
                        546.0, 
                        114.0, 
                        471.0, 
                        29.0
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
                    "fontsize": 20.0, 
                    "id": "obj-16", 
                    "patching_rect": [
                        1174.0, 
                        433.0, 
                        49.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "6. 0.012024 9.", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 20.0, 
                    "id": "obj-15", 
                    "patching_rect": [
                        1054.0, 
                        595.0, 
                        356.0, 
                        27.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "pack 0. 0. 9.", 
                    "numinlets": 3, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-12", 
                    "patching_rect": [
                        1085.0, 
                        506.0, 
                        119.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "6", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 20.0, 
                    "id": "obj-11", 
                    "patching_rect": [
                        917.0, 
                        386.0, 
                        50.0, 
                        27.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "0.012024", 
                    "numinlets": 2, 
                    "maxclass": "message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 3, 
                    "fontsize": 20.0, 
                    "id": "obj-10", 
                    "patching_rect": [
                        955.0, 
                        428.0, 
                        50.0, 
                        72.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.route /change /speed", 
                    "numinlets": 3, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "", 
                        "", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-3", 
                    "patching_rect": [
                        947.0, 
                        338.0, 
                        215.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/change : 6,\n/rate : -0.012024,\n/speed : 0.012024,\n/in : 6,\n/decreasing : 6", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 5, 
                    "fontsize": 20.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-8", 
                    "patching_rect": [
                        545.0, 
                        394.0, 
                        359.0, 
                        118.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.if bound(/increasing)", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-7", 
                    "patching_rect": [
                        245.0, 
                        252.0, 
                        208.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/change : 7,\n/rate : 0.012024,\n/speed : 0.012024,\n/in : 7,\n/increasing : 7", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 5, 
                    "fontsize": 20.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-6", 
                    "patching_rect": [
                        78.0, 
                        339.0, 
                        359.0, 
                        118.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.if bound(/change)", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-5", 
                    "patching_rect": [
                        109.0, 
                        162.0, 
                        392.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "numoutlets": 2, 
                    "orientation": 0, 
                    "numinlets": 1, 
                    "contdata": 1, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "maxclass": "multislider", 
                    "parameter_enable": 0, 
                    "id": "obj-4", 
                    "patching_rect": [
                        295.0, 
                        10.0, 
                        501.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/between : 0.589175,\n/in : 6", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 2, 
                    "fontsize": 20.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-2", 
                    "patching_rect": [
                        506.0, 
                        207.0, 
                        359.0, 
                        51.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.stringcurtain -1. 1. 12", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        295.0, 
                        62.0, 
                        215.0, 
                        29.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            -24.0, 
            147.0, 
            1464.0, 
            705.0
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
                        "obj-5", 
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
                        "obj-15", 
                        1
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
                        "obj-10", 
                        1
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
                        1
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
                        1
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
                        "obj-12", 
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
                        "obj-16", 
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
                        "obj-5", 
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
                        "obj-7", 
                        0
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
                        "obj-7", 
                        1
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-8", 
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
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.stringcurtain.maxpat", 
                "bootpath": "/Users/adrian2013/movementworkshop/dance"
            }, 
            {
                "type": "iLaX", 
                "name": "o.pack.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.union.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.if.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.expr.mxo"
            }
        ]
    }
}