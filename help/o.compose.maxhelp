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
            "architecture": "x64", 
            "minor": 1, 
            "revision": 6
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
                    "id": "obj-5", 
                    "patching_rect": [
                        12.0, 
                        417.0, 
                        20.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/foo : 1.4", 
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
                    "id": "obj-2", 
                    "patching_rect": [
                        37.0, 
                        500.0, 
                        91.0, 
                        34.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/bloo : [\"a\", \"r\", \"s\"]", 
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
                    "id": "obj-32", 
                    "patching_rect": [
                        555.0, 
                        457.0, 
                        91.0, 
                        34.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/bar : [1, 2, 3]", 
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
                    "id": "obj-31", 
                    "patching_rect": [
                        485.0, 
                        457.0, 
                        63.0, 
                        34.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/foo : 1.4", 
                    "numinlets": 2, 
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
                    "id": "obj-25", 
                    "patching_rect": [
                        37.0, 
                        454.0, 
                        71.0, 
                        24.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/foo : [1, 2, 3]", 
                    "numinlets": 2, 
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
                    "id": "obj-20", 
                    "patching_rect": [
                        37.0, 
                        283.5, 
                        68.0, 
                        24.0
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
                    "id": "obj-23", 
                    "patching_rect": [
                        89.0, 
                        381.0, 
                        50.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /foo 0.", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-21", 
                    "patching_rect": [
                        89.0, 
                        417.0, 
                        83.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.compose can be used to display and store contents of an OSC bundle sent to its right inlet (the bundle won't come out until the object is clicked or banged)", 
                    "numinlets": 1, 
                    "linecount": 4, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-17", 
                    "patching_rect": [
                        140.0, 
                        444.0, 
                        229.0, 
                        60.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.print", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-13", 
                    "patching_rect": [
                        37.0, 
                        315.5, 
                        44.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.compose: edit the text by unlocking the patch", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-16", 
                    "patching_rect": [
                        107.0, 
                        285.5, 
                        310.0, 
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
                        465.5, 
                        65.5, 
                        150.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.helpfilehelper @obj o.compose", 
                    "numinlets": 1, 
                    "numoutlets": 4, 
                    "outlettype": [
                        "", 
                        "", 
                        "", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "hidden": 1, 
                    "id": "obj-10", 
                    "patching_rect": [
                        427.0, 
                        20.5, 
                        185.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.compose behaves like the standard Max message box except that it converts its data to OSC packets.", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-9", 
                    "patching_rect": [
                        12.0, 
                        157.5, 
                        600.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "Create OSC bundles from text", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-8", 
                    "patching_rect": [
                        12.0, 
                        109.5, 
                        600.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.compose", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 72.0, 
                    "id": "obj-6", 
                    "patching_rect": [
                        12.0, 
                        20.5, 
                        600.0, 
                        87.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "items": [
                        "o.display", 
                        ",", 
                        "o.message"
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
                        465.5, 
                        87.5, 
                        132.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/foo : {\n\t/bar : [1, 2, 3],\n\t/bloo : [\"a\", \"r\", \"s\"]\n}", 
                    "numinlets": 2, 
                    "maxclass": "o.compose", 
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
                    "id": "obj-3", 
                    "patching_rect": [
                        485.0, 
                        261.0, 
                        150.0, 
                        64.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "the messages in a nested bundle must be on their own lines and the final square bracket must be on a new line", 
                    "numinlets": 1, 
                    "maxclass": "comment", 
                    "numoutlets": 0, 
                    "linecount": 3, 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "fontface": 2, 
                    "textcolor": [
                        0.474016, 
                        0.474016, 
                        0.474016, 
                        1.0
                    ], 
                    "id": "obj-22", 
                    "patching_rect": [
                        671.0, 
                        309.0, 
                        217.0, 
                        47.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "nested bundles can be constructed using square brackets in the arguments of an OSC message.", 
                    "numinlets": 1, 
                    "maxclass": "comment", 
                    "numoutlets": 0, 
                    "linecount": 2, 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "bubble": 1, 
                    "id": "obj-26", 
                    "patching_rect": [
                        643.0, 
                        261.0, 
                        288.0, 
                        37.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.select /bar /bloo", 
                    "numinlets": 3, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "", 
                        "", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-29", 
                    "patching_rect": [
                        485.0, 
                        417.0, 
                        159.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.route /foo", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-30", 
                    "patching_rect": [
                        485.0, 
                        381.0, 
                        71.0, 
                        20.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            169.0, 
            72.0, 
            965.0, 
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
                        "obj-10", 
                        0
                    ], 
                    "midpoints": [
                        531.5, 
                        141.5, 
                        627.0, 
                        141.5, 
                        627.0, 
                        6.5, 
                        436.5, 
                        6.5
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
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "disabled": 0, 
                    "hidden": 0, 
                    "destination": [
                        "obj-13", 
                        0
                    ], 
                    "source": [
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
                        "obj-25", 
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
                        "obj-21", 
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
                        "obj-2", 
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
                        "obj-31", 
                        0
                    ], 
                    "source": [
                        "obj-29", 
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
                        "obj-32", 
                        0
                    ], 
                    "source": [
                        "obj-29", 
                        1
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
                        "obj-30", 
                        0
                    ], 
                    "source": [
                        "obj-3", 
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
                        "obj-29", 
                        0
                    ], 
                    "source": [
                        "obj-30", 
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
                        "obj-25", 
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
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.select.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.compose.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.print.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.pack.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.display.mxo"
            }
        ]
    }
}