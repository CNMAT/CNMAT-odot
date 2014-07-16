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
            "revision": 6
        }, 
        "boxes": [
            {
                "box": {
                    "fontname": "Arial", 
                    "patcher": {
                        "fileversion": 1, 
                        "imprint": 0, 
                        "visible": 1, 
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
                            "revision": 6
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.righttoleft", 
                                    "numinlets": 1, 
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
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-25", 
                                    "patching_rect": [
                                        61.0, 
                                        74.0, 
                                        113.5, 
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
                                    "id": "obj-1", 
                                    "patching_rect": [
                                        16.0, 
                                        943.0, 
                                        20.0, 
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
                                    "id": "obj-19", 
                                    "patching_rect": [
                                        84.0, 
                                        1034.0, 
                                        20.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.forward", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        206.0, 
                                        1075.0, 
                                        61.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/displaylist", 
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
                                        16.0, 
                                        972.0, 
                                        150.0, 
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
                                    "id": "obj-27", 
                                    "patching_rect": [
                                        186.0, 
                                        1018.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.var", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-26", 
                                    "patching_rect": [
                                        166.0, 
                                        1120.0, 
                                        37.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.expr /displaylist = [ /displaylist \\, /graphicalobject]", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-18", 
                                    "patching_rect": [
                                        186.0, 
                                        1046.0, 
                                        276.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/position : [-0.1, -0.4, \"$1\"],\n/radius : 0.04,\n/radiusbis : \"$1\",\n/blue,\n/radius/bis : 0.01,\n/length : 0.7,\n/shape : \"cone\"", 
                                    "numinlets": 2, 
                                    "maxclass": "o.message", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "linecount": 7, 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-14", 
                                    "patching_rect": [
                                        59.0, 
                                        733.0, 
                                        253.0, 
                                        100.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/shape : \"dodecahedron\",\n/size : [0.2, 0.2, 0.2],\n/value : \"$1\",\n/position : [0.4, \"$1\", -0.4],\n/color : [0.4, 0.2, 0.5]", 
                                    "numinlets": 2, 
                                    "maxclass": "o.message", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "linecount": 5, 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-12", 
                                    "patching_rect": [
                                        147.0, 
                                        362.0, 
                                        150.0, 
                                        74.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/shape : \"icosahedron\",\n/size : [\"$1\", \"$1\", \"$1\"],\n/position : [-0.2, \"$1\", -0.4],\n/color : [1., 0.2, 0.5]", 
                                    "numinlets": 2, 
                                    "maxclass": "o.message", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "linecount": 4, 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-8", 
                                    "patching_rect": [
                                        551.0, 
                                        570.0, 
                                        163.0, 
                                        60.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/position : [-0.1, 0.2, \"$1\"],\n/radius : 0.04,\n/green,\n/radius/bis : 0.01,\n/length : 0.7,\n/shape : \"cylinder\"", 
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
                                    "id": "obj-11", 
                                    "patching_rect": [
                                        100.0, 
                                        630.0, 
                                        253.0, 
                                        87.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/a : [\"$1\", \"$1\", -0.2],\n/b : [-0.4, 0.6, 0.4],\n/c : [-0.6, 0.2, -0.6],\n/color : [0.2, \"$1\", 0.8],\n/shape : \"triangle\"", 
                                    "numinlets": 2, 
                                    "maxclass": "o.message", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "linecount": 5, 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-9", 
                                    "patching_rect": [
                                        387.0, 
                                        638.0, 
                                        150.0, 
                                        74.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/position : [\"$1\", 0.3, -0.2],\n/cube : [0.7, 0.9, 0.5],\n/blue,\n/scale : [0.1, \"$1\", 0.2],\n/orientation : [0, 45, 90],\n/shape : \"cube\"", 
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
                                    "id": "obj-10", 
                                    "patching_rect": [
                                        138.0, 
                                        498.0, 
                                        150.0, 
                                        87.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/position : [\"$1\", \"$1\", \"$1\"],\n/color : [0.7, 0.9, 0.5],\n/radius : 0.1,\n/shape : \"framecircle\"", 
                                    "numinlets": 2, 
                                    "maxclass": "o.message", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "linecount": 4, 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-13", 
                                    "patching_rect": [
                                        324.0, 
                                        394.0, 
                                        150.0, 
                                        60.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/position : [0.1, \"$1\", \"$1\"],\n/color : [0.3, \"$1\", 0.5],\n/radius : 0.1,\n/shape : \"sphere\"", 
                                    "numinlets": 2, 
                                    "maxclass": "o.message", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "linecount": 4, 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-15", 
                                    "patching_rect": [
                                        198.0, 
                                        284.0, 
                                        150.0, 
                                        60.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/position : [0., 0.],\n/red,\n/radius/outer : \"$1\",\n/radius/inner : 0.05,\n/orientation : [0, 45, 90],\n/shape : \"torus\"", 
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
                                    "id": "obj-17", 
                                    "patching_rect": [
                                        341.0, 
                                        511.0, 
                                        150.0, 
                                        87.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.pack /graphicalobject", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-22", 
                                    "patching_rect": [
                                        185.0, 
                                        916.0, 
                                        133.0, 
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
                                        ""
                                    ], 
                                    "maxclass": "inlet", 
                                    "id": "obj-29", 
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
                                    "id": "obj-31", 
                                    "patching_rect": [
                                        166.0, 
                                        1200.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            425.0, 
                            44.0, 
                            1015.0, 
                            620.0
                        ], 
                        "boxanimatetime": 200, 
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
                                        "obj-30", 
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
                                        "obj-11", 
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
                                        "obj-12", 
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
                                        "obj-13", 
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
                                        "obj-14", 
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
                                        "obj-15", 
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
                                        "obj-17", 
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
                                        "obj-18", 
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
                                        "obj-18", 
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
                                        "obj-19", 
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
                                        "obj-22", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-27", 
                                        0
                                    ]
                                }
                            }, 
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-25", 
                                        1
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
                                        "obj-25", 
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
                                        "obj-25", 
                                        3
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
                                        "obj-25", 
                                        3
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
                                        "obj-25", 
                                        3
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
                                        "obj-25", 
                                        3
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
                                        "obj-25", 
                                        3
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
                                        "obj-25", 
                                        3
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
                                        "obj-25", 
                                        2
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
                                        "obj-25", 
                                        3
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
                                        "obj-25", 
                                        3
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
                                        "obj-26", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-31", 
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
                                        "obj-25", 
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
                                        "obj-27", 
                                        1
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
                                        "obj-27", 
                                        1
                                    ], 
                                    "midpoints": [
                                        215.5, 
                                        1109.0, 
                                        499.0, 
                                        1109.0, 
                                        499.0, 
                                        1070.0, 
                                        499.0, 
                                        1070.0, 
                                        499.0, 
                                        1007.0, 
                                        226.5, 
                                        1007.0
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
                                        "obj-22", 
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
                                        "obj-22", 
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
                    "text": "p build display list from components", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-33", 
                    "patching_rect": [
                        53.0, 
                        150.0, 
                        201.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "Render GL graphical objects from  shape descripters in each element of a  display list  ", 
                    "numinlets": 1, 
                    "linecount": 2, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-20", 
                    "patching_rect": [
                        47.0, 
                        14.0, 
                        247.0, 
                        33.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.gl place", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-16", 
                    "patching_rect": [
                        598.0, 
                        1072.0, 
                        75.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/displaylist : [{\n\t/position : [0., 0.],\n\t/color : [0.7, 0.9, 0.5],\n\t/text : \"hello world\",\n\t/shape : \"text\"\n}, {\n\t/position : [0., 0.3],\n\t/color : [0.7, 0.2, 0.5],\n\t/text : \"thing world\",\n\t/shape : \"text\"\n}, {\n\t/position : [0.1, 0.416309, 0.416309],\n\t/color : [0.3, 0.416309, 0.5],\n\t/radius : 0.1,\n\t/shape : \"sphere\"\n}, {\n\t/position : [0.416309, 0.416309, 0.416309],\n\t/color : [0.7, 0.9, 0.5],\n\t/radius : 0.1,\n\t/shape : \"framecircle\"\n}, {\n\t/position : [0., 0.],\n\t/red,\n\t/radius/outer : 0.416309,\n\t/radius/inner : 0.05,\n\t/orientation : [0, 45, 90],\n\t/shape : \"torus\"\n}, {\n\t/shape : \"icosahedron\",\n\t/size : [0.416309, 0.416309, 0.416309],\n\t/position : [-0.2, 0.416309, -0.4],\n\t/color : [1., 0.2, 0.5]\n}, {\n\t/shape : \"dodecahedron\",\n\t/size : [0.2, 0.2, 0.2],\n\t/value : 0.416309,\n\t/position : [0.4, 0.416309, -0.4],\n\t/color : [0.4, 0.2, 0.5]\n}, {\n\t/a : [0.416309, 0.416309, -0.2],\n\t/b : [-0.4, 0.6, 0.4],\n\t/c : [-0.6, 0.2, -0.6],\n\t/color : [0.2, 0.416309, 0.8],\n\t/shape : \"triangle\"\n}, {\n\t/position : [-0.1, -0.4, 0.416309],\n\t/radius : 0.04,\n\t/radiusbis : 0.416309,\n\t/blue,\n\t/radius/bis : 0.01,\n\t/length : 0.7,\n\t/shape : \"cone\"\n}, {\n\t/position : [0.416309, 0.3, -0.2],\n\t/cube : [0.7, 0.9, 0.5],\n\t/blue,\n\t/scale : [0.1, 0.416309, 0.2],\n\t/orientation : [0, 45, 90],\n\t/shape : \"cube\"\n}, {\n\t/position : [-0.1, 0.2, 0.416309],\n\t/radius : 0.04,\n\t/green,\n\t/radius/bis : 0.01,\n\t/length : 0.7,\n\t/shape : \"cylinder\"\n}]", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 67, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-5", 
                    "patching_rect": [
                        318.0, 
                        1101.0, 
                        298.0, 
                        905.0
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
                    "setminmax": [
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-40", 
                    "patching_rect": [
                        405.0, 
                        92.0, 
                        235.0, 
                        18.0
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
                            "revision": 6
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "line 0.", 
                                    "numinlets": 3, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        ""
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-37", 
                                    "patching_rect": [
                                        53.0, 
                                        210.0, 
                                        46.0, 
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
                                    "id": "obj-36", 
                                    "patching_rect": [
                                        63.0, 
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
                                    "id": "obj-34", 
                                    "patching_rect": [
                                        62.0, 
                                        129.0, 
                                        60.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "0, 0.5 3000", 
                                    "numinlets": 2, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "message", 
                                    "fontsize": 12.0, 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        50.0, 
                                        156.0, 
                                        71.0, 
                                        18.0
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
                                        53.0, 
                                        295.728882, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            0.0, 
                            0.0, 
                            640.0, 
                            480.0
                        ], 
                        "lines": [
                            {
                                "patchline": {
                                    "disabled": 0, 
                                    "source": [
                                        "obj-34", 
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
                                        "obj-36", 
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
                                        "obj-37", 
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
                                        "obj-5", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-37", 
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
                    "text": "p arrow of time", 
                    "numinlets": 0, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-39", 
                    "patching_rect": [
                        439.0, 
                        38.0, 
                        90.0, 
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
                    "id": "obj-32", 
                    "patching_rect": [
                        792.0, 
                        106.0, 
                        41.0, 
                        32.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/displaylist : [{\n\t/position : [0., 0.],\n\t/color : [0.7, 0.9, 0.5],\n\t/text : \"hello world\",\n\t/shape : \"text\"\n}, {\n\t/position : [0., 0.3],\n\t/color : [0.7, 0.2, 0.5],\n\t/text : \"thing world\",\n\t/shape : \"text\"\n}, {\n\t/position : [0.1, \"$1\", \"$1\"],\n\t/color : [0.3, \"$1\", 0.5],\n\t/radius : 0.1,\n\t/shape : \"sphere\"\n}, {\n\t/position : [\"$1\", \"$1\", \"$1\"],\n\t/color : [0.7, 0.9, 0.5],\n\t/radius : 0.1,\n\t/shape : \"framecircle\"\n}, {\n\t/position : [0., 0.],\n\t/red,\n\t/radius/outer : \"$1\",\n\t/radius/inner : 0.05,\n\t/orientation : [0, 45, 90],\n\t/shape : \"torus\"\n}, {\n\t/shape : \"icosahedron\",\n\t/size : [\"$1\", \"$1\", \"$1\"],\n\t/position : [-0.2, \"$1\", -0.4],\n\t/color : [1., 0.2, 0.5]\n}, {\n\t/shape : \"dodecahedron\",\n\t/size : [0.2, 0.2, 0.2],\n\t/value : \"$1\",\n\t/position : [0.4, \"$1\", -0.4],\n\t/color : [0.4, 0.2, 0.5]\n}, {\n\t/a : [\"$1\", \"$1\", -0.2],\n\t/b : [-0.4, 0.6, 0.4],\n\t/c : [-0.6, 0.2, -0.6],\n\t/color : [0.2, \"$1\", 0.8],\n\t/shape : \"triangle\"\n}, {\n\t/position : [-0.1, -0.4, \"$1\"],\n\t/radius : 0.04,\n\t/radiusbis : \"$1\",\n\t/blue,\n\t/radius/bis : 0.01,\n\t/length : 0.7,\n\t/shape : \"cone\"\n}, {\n\t/position : [\"$1\", 0.3, -0.2],\n\t/cube : [0.7, 0.9, 0.5],\n\t/blue,\n\t/scale : [0.1, \"$1\", 0.2],\n\t/orientation : [0, 45, 90],\n\t/shape : \"cube\"\n}, {\n\t/position : [-0.1, 0.2, \"$1\"],\n\t/radius : 0.04,\n\t/green,\n\t/radius/bis : 0.01,\n\t/length : 0.7,\n\t/shape : \"cylinder\"\n}]", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 67, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-21", 
                    "patching_rect": [
                        706.0, 
                        154.0, 
                        242.0, 
                        905.0
                    ]
                }
            }, 
            {
                "box": {
                    "name": "place", 
                    "numinlets": 1, 
                    "maxclass": "jit.pwindow", 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "idlemouse": 1, 
                    "pickray": 1, 
                    "id": "obj-4", 
                    "patching_rect": [
                        173.0, 
                        187.0, 
                        416.0, 
                        359.0
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
                    "id": "obj-3", 
                    "patching_rect": [
                        54.0, 
                        101.0, 
                        41.0, 
                        32.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            133.0, 
            50.0, 
            1448.0, 
            778.0
        ], 
        "lines": [
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-16", 
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
                        "obj-21", 
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
                        "obj-3", 
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
                        "obj-32", 
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
                        "obj-33", 
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
                        "obj-39", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-3", 
                        1
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
                        "obj-32", 
                        1
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
                        "obj-21", 
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
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.gl.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/io/graphics"
            }, 
            {
                "patcherrelativepath": "../../../../../../Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "thru.maxpat", 
                "bootpath": "/Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.gl.platohelper.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/io/graphics"
            }, 
            {
                "patcherrelativepath": "../../core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.righttoleft.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/core"
            }, 
            {
                "patcherrelativepath": "../../core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.in.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/core"
            }, 
            {
                "patcherrelativepath": "../../core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.port.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/core"
            }, 
            {
                "patcherrelativepath": "../../../experimental/aspect", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.aspect.joinpoint.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/experimental/aspect"
            }, 
            {
                "patcherrelativepath": "../../core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.out.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/core"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.gltexthelper.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/io/graphics"
            }, 
            {
                "patcherrelativepath": "../../../../Documents/Max/Packages/odot/patchers", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.forward.maxpat", 
                "bootpath": "/Users/adrian2013/Documents/Max/Packages/odot/patchers"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.iterate.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.cond.mxo"
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
                "name": "o.if.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.pack.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.select.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.context.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.collect.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.var.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.pak.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.prepend.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.listenumerate.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "trampoline.mxo"
            }
        ]
    }
}