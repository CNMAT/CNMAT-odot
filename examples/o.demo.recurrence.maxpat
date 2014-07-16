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
        "showontab": 1, 
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
                        "showontab": 1, 
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
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.display", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-11", 
                                    "patching_rect": [
                                        259.0, 
                                        335.0, 
                                        200.0, 
                                        34.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.if /until==true", 
                                    "numinlets": 1, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "FullPacket", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-4", 
                                    "patching_rect": [
                                        149.0, 
                                        241.0, 
                                        90.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/state : 0.125", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.compose", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-1", 
                                    "patching_rect": [
                                        629.0, 
                                        54.0, 
                                        88.0, 
                                        24.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/state : 27", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.compose", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-10", 
                                    "patching_rect": [
                                        508.0, 
                                        54.0, 
                                        88.0, 
                                        24.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "2nd order damped sinusoid", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-9", 
                                    "patching_rect": [
                                        327.0, 
                                        60.0, 
                                        156.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/iteration = \"lambda(s) {  /power4root = sqrt(sqrt(/power4root??1)) ;  /until = (/power4root==1)  ; s * /power4root ;}   \"", 
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
                                    "id": "obj-7", 
                                    "patching_rect": [
                                        154.0, 
                                        112.0, 
                                        858.0, 
                                        33.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/state : 8", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.compose", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-8", 
                                    "patching_rect": [
                                        162.0, 
                                        54.0, 
                                        88.0, 
                                        24.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "2) Click to repeat", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        31.0, 
                                        27.0, 
                                        108.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "1) Choose among many iteration functions", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        157.0, 
                                        32.0, 
                                        295.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.compose", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-37", 
                                    "patching_rect": [
                                        41.0, 
                                        52.0, 
                                        25.0, 
                                        24.0
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
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        119.0, 
                                        172.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.display", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        4.0, 
                                        333.0, 
                                        200.0, 
                                        34.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.expr /state = apply(/iteration\\, /state)", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-33", 
                                    "patching_rect": [
                                        119.091003, 
                                        203.923096, 
                                        209.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.select /state", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-14", 
                                    "patching_rect": [
                                        48.12384, 
                                        282.30835, 
                                        85.0, 
                                        20.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            499.0, 
                            -948.0, 
                            1030.0, 
                            404.0
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
                                        "obj-7", 
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
                                        "obj-7", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-10", 
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
                                        "obj-5", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-14", 
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
                                        "obj-14", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-33", 
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
                                        "obj-4", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-33", 
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
                                        "obj-37", 
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
                                        "obj-11", 
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
                                        "obj-6", 
                                        1
                                    ], 
                                    "disabled": 0, 
                                    "source": [
                                        "obj-4", 
                                        1
                                    ], 
                                    "midpoints": [
                                        229.5, 
                                        281.0, 
                                        340.0, 
                                        281.0, 
                                        340.0, 
                                        159.0, 
                                        159.5, 
                                        159.0
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
                                        "obj-33", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-6", 
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
                                        1
                                    ], 
                                    "source": [
                                        "obj-7", 
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
                                        "obj-7", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-8", 
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
                    "text": "p Termination", 
                    "numinlets": 0, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-19", 
                    "patching_rect": [
                        933.0, 
                        17.0, 
                        82.0, 
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
                        "showontab": 1, 
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
                                    "text": "/state : [0, 0.1],\n/omega : 0.02,\n/r : 1.", 
                                    "numinlets": 1, 
                                    "maxclass": "o.compose", 
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
                                    "id": "obj-10", 
                                    "patching_rect": [
                                        508.0, 
                                        54.0, 
                                        88.0, 
                                        51.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "2nd order damped sinusoid", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-9", 
                                    "patching_rect": [
                                        327.0, 
                                        60.0, 
                                        156.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/iteration = \"lambda(s) {  [ 2*cos(twopi()* /omega) * /r *first(s) - /r * /r *last(s), first(s) ] ;  }   \"", 
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
                                    "id": "obj-7", 
                                    "patching_rect": [
                                        162.0, 
                                        116.0, 
                                        488.0, 
                                        33.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/state : [0, 0.07],\n/omega : 0.02,\n/r : 0.992", 
                                    "numinlets": 1, 
                                    "maxclass": "o.compose", 
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
                                    "id": "obj-8", 
                                    "patching_rect": [
                                        162.0, 
                                        54.0, 
                                        88.0, 
                                        51.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "2) Click to repeat", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        31.0, 
                                        27.0, 
                                        108.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "1) Choose among many iteration functions", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        157.0, 
                                        32.0, 
                                        295.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.compose", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-37", 
                                    "patching_rect": [
                                        41.0, 
                                        52.0, 
                                        25.0, 
                                        24.0
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
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        119.0, 
                                        172.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/state : [-5.91194e-15, -0.1]", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.display", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        35.0, 
                                        338.0, 
                                        200.0, 
                                        34.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.expr /state = apply(/iteration\\, /state)", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-33", 
                                    "patching_rect": [
                                        119.091003, 
                                        203.923096, 
                                        209.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.select /state", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-14", 
                                    "patching_rect": [
                                        119.12384, 
                                        255.30835, 
                                        85.0, 
                                        20.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            0.0, 
                            26.0, 
                            1030.0, 
                            404.0
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
                                        "obj-7", 
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
                                        "obj-5", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-14", 
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
                                        "obj-14", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-33", 
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
                                        "obj-6", 
                                        1
                                    ], 
                                    "disabled": 0, 
                                    "source": [
                                        "obj-33", 
                                        0
                                    ], 
                                    "midpoints": [
                                        128.591003, 
                                        245.0, 
                                        341.0, 
                                        245.0, 
                                        341.0, 
                                        157.0, 
                                        159.5, 
                                        157.0
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
                                        "obj-6", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-37", 
                                        0
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
                                        "obj-33", 
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
                                        1
                                    ], 
                                    "source": [
                                        "obj-7", 
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
                    "text": "p Parameterization", 
                    "numinlets": 0, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-10", 
                    "patching_rect": [
                        798.0, 
                        17.0, 
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
                        "showontab": 1, 
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
                                    "text": "Counting", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-4", 
                                    "patching_rect": [
                                        355.0, 
                                        195.0, 
                                        59.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "2) Click to repeat", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        17.0, 
                                        13.0, 
                                        108.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "1) Click toestablish the initial state", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        142.0, 
                                        17.0, 
                                        193.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.compose", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-37", 
                                    "patching_rect": [
                                        26.0, 
                                        37.0, 
                                        25.0, 
                                        24.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/state : 1", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.compose", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-23", 
                                    "patching_rect": [
                                        134.0, 
                                        41.0, 
                                        150.0, 
                                        24.0
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
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        104.0, 
                                        157.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/state : 14", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.display", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        20.0, 
                                        323.0, 
                                        96.0, 
                                        34.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/state++", 
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
                                    "id": "obj-33", 
                                    "patching_rect": [
                                        104.091003, 
                                        186.923096, 
                                        150.0, 
                                        33.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.select /state", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-14", 
                                    "patching_rect": [
                                        104.12384, 
                                        240.30835, 
                                        85.0, 
                                        20.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            0.0, 
                            26.0, 
                            1030.0, 
                            404.0
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
                                        "obj-14", 
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
                                        1
                                    ], 
                                    "source": [
                                        "obj-23", 
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
                                        "obj-14", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-33", 
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
                                        "obj-6", 
                                        1
                                    ], 
                                    "disabled": 0, 
                                    "source": [
                                        "obj-33", 
                                        0
                                    ], 
                                    "midpoints": [
                                        113.591003, 
                                        230.0, 
                                        326.0, 
                                        230.0, 
                                        326.0, 
                                        142.0, 
                                        144.5, 
                                        142.0
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
                                        "obj-6", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-37", 
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
                                        "obj-33", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-6", 
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
                    "text": "p Introduction", 
                    "numinlets": 0, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-9", 
                    "patching_rect": [
                        408.0, 
                        15.0, 
                        83.0, 
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
                        "showontab": 1, 
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
                                    "text": "Exponential funciton", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-4", 
                                    "patching_rect": [
                                        352.0, 
                                        192.0, 
                                        150.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "2) Click to repeat", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        17.0, 
                                        13.0, 
                                        108.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "1) Click to establish the initial state", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        142.0, 
                                        17.0, 
                                        193.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.compose", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-37", 
                                    "patching_rect": [
                                        26.0, 
                                        37.0, 
                                        25.0, 
                                        24.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/state : 1", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.compose", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-23", 
                                    "patching_rect": [
                                        134.0, 
                                        41.0, 
                                        150.0, 
                                        24.0
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
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        104.0, 
                                        157.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/state : 0.59049", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.display", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        20.0, 
                                        323.0, 
                                        96.0, 
                                        34.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/state *=0.9", 
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
                                    "id": "obj-33", 
                                    "patching_rect": [
                                        104.091003, 
                                        186.923096, 
                                        150.0, 
                                        33.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.select /state", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-14", 
                                    "patching_rect": [
                                        104.12384, 
                                        240.30835, 
                                        85.0, 
                                        20.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            0.0, 
                            26.0, 
                            1030.0, 
                            404.0
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
                                        "obj-14", 
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
                                        1
                                    ], 
                                    "source": [
                                        "obj-23", 
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
                                        "obj-14", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-33", 
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
                                        "obj-6", 
                                        1
                                    ], 
                                    "disabled": 0, 
                                    "source": [
                                        "obj-33", 
                                        0
                                    ], 
                                    "midpoints": [
                                        113.591003, 
                                        230.0, 
                                        326.0, 
                                        230.0, 
                                        326.0, 
                                        142.0, 
                                        144.5, 
                                        142.0
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
                                        "obj-6", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-37", 
                                        0
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
                                        "obj-33", 
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
                    "text": "p Variation", 
                    "numinlets": 0, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-4", 
                    "patching_rect": [
                        504.0, 
                        14.0, 
                        67.0, 
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
                        "showontab": 1, 
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
                                    "text": "set the new state according to the iteration function applied to the preveous function", 
                                    "numinlets": 1, 
                                    "linecount": 3, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-7", 
                                    "patching_rect": [
                                        343.0, 
                                        173.0, 
                                        180.0, 
                                        47.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "Fibonacci", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-4", 
                                    "patching_rect": [
                                        390.0, 
                                        77.0, 
                                        150.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "2) Click ro repeat", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        17.0, 
                                        13.0, 
                                        108.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "1) Click to establish the initial state", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        142.0, 
                                        17.0, 
                                        193.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.compose", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-37", 
                                    "patching_rect": [
                                        26.0, 
                                        37.0, 
                                        25.0, 
                                        24.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/iteration = \"lambda(s) { [ sum(s), first(s)]; }\"", 
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
                                    "id": "obj-28", 
                                    "patching_rect": [
                                        134.0, 
                                        71.0, 
                                        243.0, 
                                        33.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/state : [0, 1]", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.compose", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-23", 
                                    "patching_rect": [
                                        134.0, 
                                        41.0, 
                                        150.0, 
                                        24.0
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
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        104.0, 
                                        157.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/state : [377, 233]", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.display", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        20.0, 
                                        323.0, 
                                        96.0, 
                                        34.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.expr /state = apply(/iteration\\, /state)", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-33", 
                                    "patching_rect": [
                                        104.091003, 
                                        188.923096, 
                                        209.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.select /state", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-14", 
                                    "patching_rect": [
                                        104.12384, 
                                        240.30835, 
                                        85.0, 
                                        20.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            0.0, 
                            26.0, 
                            1030.0, 
                            404.0
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
                                        "obj-14", 
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
                                        "obj-28", 
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
                                        1
                                    ], 
                                    "source": [
                                        "obj-28", 
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
                                        "obj-14", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-33", 
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
                                        "obj-6", 
                                        1
                                    ], 
                                    "disabled": 0, 
                                    "source": [
                                        "obj-33", 
                                        0
                                    ], 
                                    "midpoints": [
                                        113.591003, 
                                        230.0, 
                                        326.0, 
                                        230.0, 
                                        326.0, 
                                        142.0, 
                                        144.5, 
                                        142.0
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
                                        "obj-6", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-37", 
                                        0
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
                                        "obj-33", 
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
                    "text": "p Generalization", 
                    "numinlets": 0, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-2", 
                    "patching_rect": [
                        584.0, 
                        16.0, 
                        98.0, 
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
                        "showontab": 1, 
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
                                    "text": "/iteration = \"lambda(s) { s*1.1; }\"", 
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
                                    "id": "obj-11", 
                                    "patching_rect": [
                                        437.0, 
                                        212.0, 
                                        243.0, 
                                        33.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/state : 1", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.compose", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-12", 
                                    "patching_rect": [
                                        437.0, 
                                        182.0, 
                                        150.0, 
                                        24.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/iteration = \"lambda(s) { s*0.9; }\"", 
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
                                    "id": "obj-9", 
                                    "patching_rect": [
                                        436.0, 
                                        140.0, 
                                        243.0, 
                                        33.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/state : 1", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.compose", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-10", 
                                    "patching_rect": [
                                        436.0, 
                                        110.0, 
                                        150.0, 
                                        24.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/iteration = \"lambda(s) { s+1; }\"", 
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
                                    "id": "obj-7", 
                                    "patching_rect": [
                                        409.0, 
                                        74.0, 
                                        243.0, 
                                        33.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/state : 0", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.compose", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-8", 
                                    "patching_rect": [
                                        409.0, 
                                        44.0, 
                                        150.0, 
                                        24.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "2) Click to repeat", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-3", 
                                    "patching_rect": [
                                        16.0, 
                                        12.0, 
                                        108.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "1) Choose among many iteration functions", 
                                    "numinlets": 1, 
                                    "numoutlets": 0, 
                                    "maxclass": "comment", 
                                    "frgb": 0.0, 
                                    "fontsize": 12.0, 
                                    "id": "obj-2", 
                                    "patching_rect": [
                                        142.0, 
                                        17.0, 
                                        295.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.compose", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-37", 
                                    "patching_rect": [
                                        26.0, 
                                        37.0, 
                                        25.0, 
                                        24.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/iteration = \"lambda(s) { [ sum(s), first(s)]; }\"", 
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
                                    "id": "obj-28", 
                                    "patching_rect": [
                                        134.0, 
                                        71.0, 
                                        243.0, 
                                        33.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/state : [0, 1]", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.compose", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-23", 
                                    "patching_rect": [
                                        134.0, 
                                        41.0, 
                                        150.0, 
                                        24.0
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
                                    "id": "obj-6", 
                                    "patching_rect": [
                                        104.0, 
                                        157.0, 
                                        50.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/state : 1.94872", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "maxclass": "o.display", 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-5", 
                                    "patching_rect": [
                                        20.0, 
                                        323.0, 
                                        96.0, 
                                        34.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.expr /state = apply(/iteration\\, /state)", 
                                    "numinlets": 1, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-33", 
                                    "patching_rect": [
                                        104.091003, 
                                        188.923096, 
                                        209.0, 
                                        20.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "o.select /state", 
                                    "numinlets": 2, 
                                    "numoutlets": 2, 
                                    "outlettype": [
                                        "", 
                                        "FullPacket"
                                    ], 
                                    "maxclass": "newobj", 
                                    "fontsize": 12.0, 
                                    "id": "obj-14", 
                                    "patching_rect": [
                                        104.12384, 
                                        240.30835, 
                                        85.0, 
                                        20.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            0.0, 
                            26.0, 
                            1030.0, 
                            404.0
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
                                        "obj-9", 
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
                                        "obj-6", 
                                        1
                                    ], 
                                    "disabled": 0, 
                                    "source": [
                                        "obj-11", 
                                        0
                                    ], 
                                    "midpoints": [
                                        446.5, 
                                        255.0, 
                                        372.0, 
                                        255.0, 
                                        372.0, 
                                        141.0, 
                                        144.5, 
                                        141.0
                                    ], 
                                    "hidden": 0
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
                                        "obj-14", 
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
                                        "obj-28", 
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
                                        1
                                    ], 
                                    "source": [
                                        "obj-28", 
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
                                        "obj-14", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-33", 
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
                                        "obj-6", 
                                        1
                                    ], 
                                    "disabled": 0, 
                                    "source": [
                                        "obj-33", 
                                        0
                                    ], 
                                    "midpoints": [
                                        113.591003, 
                                        230.0, 
                                        326.0, 
                                        230.0, 
                                        326.0, 
                                        142.0, 
                                        144.5, 
                                        142.0
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
                                        "obj-6", 
                                        0
                                    ], 
                                    "source": [
                                        "obj-37", 
                                        0
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
                                        "obj-33", 
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
                                        "obj-6", 
                                        1
                                    ], 
                                    "disabled": 0, 
                                    "source": [
                                        "obj-7", 
                                        0
                                    ], 
                                    "midpoints": [
                                        418.5, 
                                        144.0, 
                                        144.5, 
                                        144.0
                                    ], 
                                    "hidden": 0
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
                                        "obj-7", 
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
                                        "obj-6", 
                                        1
                                    ], 
                                    "disabled": 0, 
                                    "source": [
                                        "obj-9", 
                                        0
                                    ], 
                                    "midpoints": [
                                        445.5, 
                                        174.0, 
                                        165.0, 
                                        174.0, 
                                        165.0, 
                                        153.0, 
                                        144.5, 
                                        153.0
                                    ], 
                                    "hidden": 0
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
                    "text": "p Ramification", 
                    "numinlets": 0, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        693.0, 
                        16.0, 
                        87.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "Performing an operation and building the result into the next repeat of that operation  is a powerful and common programming technique and for that matter works quite well well cooking, e.g., whipping cream.\n\nAll we need for iteration of this recurrent type in \"o.\" is a place to store the result that we can feed into the next computation. I  used \"o.union\" for this In the examples you can find under the tabs above.\n\n\nAdrian Freed 2014", 
                    "numinlets": 1, 
                    "maxclass": "comment", 
                    "numoutlets": 0, 
                    "bgcolor": [
                        0.0, 
                        1.0, 
                        1.0, 
                        1.0
                    ], 
                    "linecount": 10, 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-15", 
                    "patching_rect": [
                        10.640991, 
                        7.450134, 
                        387.0, 
                        141.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            499.0, 
            -974.0, 
            1030.0, 
            430.0
        ], 
        "lines": [], 
        "statusbarvisible": 2, 
        "gridsnaponopen": 0, 
        "bglocked": 0, 
        "dependency_cache": [
            {
                "type": "iLaX", 
                "name": "o.select.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.expr.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.display.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.union.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.compose.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.expr.codebox.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.if.mxo"
            }
        ]
    }
}