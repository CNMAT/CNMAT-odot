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
                    "text": "ctlout", 
                    "numinlets": 3, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-34", 
                    "patching_rect": [
                        439.0, 
                        273.0, 
                        46.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.midi", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-23", 
                    "patching_rect": [
                        838.5, 
                        121.0, 
                        55.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/control/change : {\n\t/controller : 10.,\n\t/value : 2\n}", 
                    "numinlets": 1, 
                    "maxclass": "o.display", 
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
                    "id": "obj-9", 
                    "patching_rect": [
                        378.0, 
                        469.0, 
                        150.0, 
                        74.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "assign(add([\"/encoder/a/\", \"/encoder/b/\", \"/encoder/c/\", \"/encoder/d/\", \n\"/encoder_button/a/\", \"/encoder_button/b/\", \"/encoder_button/c/\", \"/encoder_button/d/\",\n \"/button/top/\", \"/button/bottom/\", \"/fader/\", \"/general/\"] [[floor((/controller - 1) / 8)]],\n\n (((floor((/controller - 1) / 8)) == 11) ? [\"a\",\"b\", \"c\", \"d\"] : [\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\"]) [[  (/controller  - 1) % 8]] ),\n\n/value / 127.0); delete(/value); delete(/controller);", 
                    "numinlets": 1, 
                    "maxclass": "o.expr.codebox", 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "linecount": 7, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-38", 
                    "patching_rect": [
                        1019.0, 
                        327.0, 
                        644.0, 
                        113.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /value /controller /channel", 
                    "numinlets": 3, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-33", 
                    "patching_rect": [
                        1019.0, 
                        287.0, 
                        186.0, 
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
                    "id": "obj-4", 
                    "patching_rect": [
                        1329.0, 
                        121.0, 
                        25.0, 
                        25.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "prepend port", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-3", 
                    "patching_rect": [
                        1019.0, 
                        215.0, 
                        91.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/port ??=\"BCF2000\";\n/output/port/to/device ??=  /port;\n/device/input/port ??= /port;\n", 
                    "numinlets": 1, 
                    "maxclass": "o.expr.codebox", 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "linecount": 3, 
                    "fontsize": 14.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-2", 
                    "patching_rect": [
                        1001.0, 
                        51.0, 
                        214.0, 
                        66.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.route /output/port/to/device /device/input/port", 
                    "numinlets": 3, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "", 
                        "", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-35", 
                    "patching_rect": [
                        1001.0, 
                        135.0, 
                        299.0, 
                        22.0
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
                        1001.0, 
                        20.0, 
                        25.0, 
                        25.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "color": [
                        0.4, 
                        0.4, 
                        0.8, 
                        1.0
                    ], 
                    "text": "ctlin BCF2000", 
                    "numinlets": 1, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "int", 
                        "int", 
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-40", 
                    "patching_rect": [
                        1019.0, 
                        248.0, 
                        99.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "comment": "", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "outlet", 
                    "id": "obj-44", 
                    "patching_rect": [
                        1019.0, 
                        472.5, 
                        15.0, 
                        15.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "prepend port", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        964.0, 
                        173.0, 
                        99.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "* 127.", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "float"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-5", 
                    "patching_rect": [
                        465.5, 
                        175.0, 
                        67.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "* 127.", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "float"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-6", 
                    "patching_rect": [
                        392.75, 
                        173.0, 
                        67.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "* 127.", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "float"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-7", 
                    "patching_rect": [
                        320.0, 
                        173.0, 
                        67.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "* 127.", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "float"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-8", 
                    "patching_rect": [
                        247.25, 
                        173.0, 
                        67.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.bcf2000encoder 72 1", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-10", 
                    "patching_rect": [
                        738.0, 
                        204.0, 
                        192.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.bcf2000encoder 64 1", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-11", 
                    "patching_rect": [
                        538.0, 
                        204.0, 
                        192.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "unpack 1 1 1", 
                    "numinlets": 1, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "int", 
                        "int", 
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-12", 
                    "patching_rect": [
                        365.25, 
                        248.0, 
                        100.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "$1 92 1", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 14.0, 
                    "id": "obj-13", 
                    "patching_rect": [
                        465.5, 
                        204.0, 
                        65.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "$1 91 1", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 14.0, 
                    "id": "obj-14", 
                    "patching_rect": [
                        392.75, 
                        204.0, 
                        65.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "$1 90 1", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 14.0, 
                    "id": "obj-15", 
                    "patching_rect": [
                        320.0, 
                        204.0, 
                        65.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "$1 89 1", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 14.0, 
                    "id": "obj-16", 
                    "patching_rect": [
                        247.25, 
                        204.0, 
                        65.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.route /a /b /c /d", 
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
                    "fontsize": 14.0, 
                    "id": "obj-17", 
                    "patching_rect": [
                        247.25, 
                        121.0, 
                        310.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.bcf2000encoder 56 1", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-18", 
                    "patching_rect": [
                        693.0, 
                        601.0, 
                        192.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.bcf2000encoder 48 1", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-19", 
                    "patching_rect": [
                        538.0, 
                        595.0, 
                        192.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.bcf2000encoder 40 1", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-20", 
                    "patching_rect": [
                        376.0, 
                        636.0, 
                        192.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.bcf2000encoder 32 1", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-21", 
                    "patching_rect": [
                        171.0, 
                        595.0, 
                        192.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.route /a /b /c /d", 
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
                    "fontsize": 14.0, 
                    "id": "obj-22", 
                    "patching_rect": [
                        171.0, 
                        549.0, 
                        543.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.bcf2000encoder 24 1", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-24", 
                    "patching_rect": [
                        701.5, 
                        356.0, 
                        192.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.bcf2000encoder 16 1", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-25", 
                    "patching_rect": [
                        483.0, 
                        356.0, 
                        192.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.bcf2000encoder 8 1", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-26", 
                    "patching_rect": [
                        294.0, 
                        356.0, 
                        182.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.bcf2000encoder 0 1", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-27", 
                    "patching_rect": [
                        101.0, 
                        356.0, 
                        182.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.bcf2000encoder 80 1", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 14.0, 
                    "id": "obj-28", 
                    "patching_rect": [
                        64.0, 
                        427.0, 
                        192.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.route /fader /encoder /general /encoder_button /button/top /button/bottom", 
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
                    "fontsize": 14.0, 
                    "id": "obj-29", 
                    "patching_rect": [
                        25.0, 
                        51.0, 
                        699.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.route /a /b /c /d", 
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
                    "fontsize": 14.0, 
                    "id": "obj-30", 
                    "patching_rect": [
                        277.0, 
                        295.0, 
                        117.0, 
                        22.0
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
                        152.5, 
                        14.0, 
                        15.0, 
                        15.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            72.0, 
            54.0, 
            1440.0, 
            766.0
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
                        "obj-10", 
                        1
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
                        "obj-11", 
                        1
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
                        "obj-18", 
                        1
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
                        "obj-19", 
                        1
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
                        "obj-20", 
                        1
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
                        "obj-21", 
                        1
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
                        "obj-24", 
                        1
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
                        "obj-25", 
                        1
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
                        "obj-26", 
                        1
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
                        "obj-27", 
                        1
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
                        "obj-28", 
                        1
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
                        "obj-9", 
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
                        "obj-9", 
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
                        "obj-12", 
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
                        "obj-12", 
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
                        "obj-12", 
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
                        "obj-17", 
                        3
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
                        "obj-17", 
                        2
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
                        "obj-17", 
                        1
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
                        "obj-17", 
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
                        "obj-2", 
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
                        "obj-2", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-4", 
                        0
                    ], 
                    "midpoints": [
                        1010.5, 
                        117.0, 
                        1338.5, 
                        117.0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-22", 
                        3
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
                        "obj-22", 
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
                        "obj-22", 
                        1
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
                        "obj-23", 
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
                        "obj-23", 
                        1
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
                        "obj-23", 
                        1
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
                        "obj-23", 
                        1
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
                        1
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-28", 
                        1
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
                        "obj-9", 
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
                        "obj-9", 
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
                        "obj-29", 
                        5
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
                        "obj-29", 
                        4
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
                        "obj-29", 
                        2
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
                        "obj-29", 
                        3
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-22", 
                        0
                    ], 
                    "midpoints": [
                        374.5, 
                        106.0, 
                        16.0, 
                        106.0, 
                        16.0, 
                        535.0, 
                        180.5, 
                        535.0
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
                        "obj-28", 
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
                        "obj-30", 
                        0
                    ], 
                    "midpoints": [
                        147.833328, 
                        286.0, 
                        286.5, 
                        286.0
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
                        "obj-40", 
                        0
                    ], 
                    "midpoints": [
                        1028.5, 
                        233.0, 
                        1028.5, 
                        233.0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-30", 
                        3
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
                        "obj-30", 
                        2
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
                        1
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
                        "obj-30", 
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
                        "obj-31", 
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
                        "obj-32", 
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
                        "obj-33", 
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
                        "obj-35", 
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
                        "obj-35", 
                        1
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-3", 
                        0
                    ], 
                    "midpoints": [
                        1150.5, 
                        201.0, 
                        1028.5, 
                        201.0
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
                        "obj-44", 
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
                        "obj-33", 
                        2
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
                        "obj-33", 
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
                        "obj-33", 
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
                        "obj-13", 
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
                        "obj-8", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-16", 
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