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
                    "text": "John MacCallum\nAdrian Freed\n2013, 2014", 
                    "numinlets": 1, 
                    "linecount": 3, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-10", 
                    "patching_rect": [
                        449.0, 
                        43.0, 
                        150.0, 
                        47.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/p : [0, 1, 2, -3, 4, 5, 2e-05, 3],\n/q : [0.01, 1.2, -1.9, 3.001, 4., 4.999, 1e-05, 4],\n/delta : [0.01, 0.2, -3.9, 6.001, 0., -0.001, -1e-05, 1],\n/squared/delta : [0.0001, 0.04, 15.21, 36.012, 0., 1e-06, 1e-10, 1.],\n/sum/squared/delta : 52.2621,\n/dist : 7.22925", 
                    "numinlets": 1, 
                    "maxclass": "o.display", 
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
                    "id": "obj-8", 
                    "patching_rect": [
                        59.0, 
                        375.0, 
                        366.0, 
                        101.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": " /delta = /q - /p;\n /squared/delta = pow(/delta, 2.0);\n /sum/squared/delta = sum(/squared/delta);\n /dist = sqrt(/sum/squared/delta);", 
                    "numinlets": 1, 
                    "maxclass": "o.expr.codebox", 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "linecount": 4, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-7", 
                    "patching_rect": [
                        59.0, 
                        282.0, 
                        366.0, 
                        73.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/p : [0, 1, 2, -3, 4, 5, 2e-05, 3],\n/q : [0.01, 1.2, -1.9, 3.001, 4., 4.999, 1e-05, 4],\n/dist : 7.22925", 
                    "numinlets": 1, 
                    "maxclass": "o.display", 
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
                    "id": "obj-6", 
                    "patching_rect": [
                        566.0, 
                        166.0, 
                        221.0, 
                        61.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/p : [0, 1, 2, -3, 4, 5, 2e-05, 3],\n/q : [0.01, 1.2, -1.9, 3.001, 4., 4.999, 1e-05, 4],\n/dist : 7.22925", 
                    "numinlets": 1, 
                    "maxclass": "o.display", 
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
                        111.0, 
                        166.0, 
                        221.0, 
                        61.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/p : [0, 1, 2, -3, 4, 5, 2e-05, 3],\n/q : [0.01, 1.2, -1.9, 3.001, 4., 4.999, 1e-05, 4]", 
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
                    "id": "obj-4", 
                    "patching_rect": [
                        111.0, 
                        43.0, 
                        262.0, 
                        37.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": " /dist = l2norm(/q - /p)", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "o.expr.codebox", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-24", 
                    "patching_rect": [
                        566.0, 
                        118.0, 
                        150.0, 
                        33.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": " /dist = sqrt(lreduce(add, map(lambda(p, q){pow(q - p, 2.0);}, /p, /q)))", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "o.expr.codebox", 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-1", 
                    "patching_rect": [
                        111.0, 
                        118.0, 
                        384.0, 
                        33.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            387.0, 
            96.0, 
            1053.0, 
            647.0
        ], 
        "lines": [
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
                        "obj-5", 
                        0
                    ], 
                    "source": [
                        "obj-1", 
                        0
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
                        "obj-6", 
                        0
                    ], 
                    "source": [
                        "obj-24", 
                        0
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
                        "obj-4", 
                        0
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
                    "destination": [
                        "obj-24", 
                        0
                    ], 
                    "disabled": 0, 
                    "source": [
                        "obj-4", 
                        0
                    ], 
                    "midpoints": [
                        120.5, 
                        105.0, 
                        575.5, 
                        105.0
                    ], 
                    "hidden": 0
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
                    "destination": [
                        "obj-7", 
                        0
                    ], 
                    "disabled": 0, 
                    "source": [
                        "obj-4", 
                        0
                    ], 
                    "midpoints": [
                        120.5, 
                        105.0, 
                        68.0, 
                        105.0, 
                        68.0, 
                        234.0, 
                        68.5, 
                        234.0
                    ], 
                    "hidden": 0
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
                        "obj-8", 
                        0
                    ], 
                    "source": [
                        "obj-7", 
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
                "name": "o.expr.codebox.mxo"
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