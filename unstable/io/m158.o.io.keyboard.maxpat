{
    "patcher": {
        "fileversion": 1, 
        "imprint": 0, 
        "boxanimatetime": 200, 
        "devicewidth": 0.0, 
        "default_fontsize": 11.0, 
        "toolbarvisible": 1, 
        "default_fontname": "Arial", 
        "digest": "", 
        "gridsize": [
            5.0, 
            5.0
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
                    "text": "loadbang", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "bang"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-55", 
                    "patching_rect": [
                        617.0, 
                        177.0, 
                        56.0, 
                        19.0
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
                    "fontsize": 11.0, 
                    "parameter_enable": 0, 
                    "id": "obj-54", 
                    "patching_rect": [
                        460.0, 
                        281.0, 
                        50.0, 
                        19.0
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
                    "id": "obj-52", 
                    "patching_rect": [
                        460.0, 
                        281.0, 
                        20.0, 
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
                    "fontsize": 11.0, 
                    "parameter_enable": 0, 
                    "id": "obj-50", 
                    "patching_rect": [
                        460.0, 
                        281.0, 
                        50.0, 
                        19.0
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
                    "fontsize": 11.0, 
                    "parameter_enable": 0, 
                    "id": "obj-48", 
                    "patching_rect": [
                        460.0, 
                        281.0, 
                        50.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/ascii : \"/\",\n/keystate : \"up\",\n/keynum : 47,\n/shift : \"up\",\n/capslock : \"up\",\n/option : \"up\",\n/control : \"up\",\n/command : \"up\",\n/numKeysDown : 0,\n/fingerIndex : 1", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 10, 
                    "fontsize": 11.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-46", 
                    "patching_rect": [
                        560.0, 
                        532.0, 
                        150.0, 
                        129.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "space", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 11.0, 
                    "id": "obj-45", 
                    "patching_rect": [
                        239.0, 
                        212.0, 
                        40.0, 
                        17.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /numKeysDown /fingerIndex", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-44", 
                    "patching_rect": [
                        375.0, 
                        433.0, 
                        184.0, 
                        19.0
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
                    "fontsize": 11.0, 
                    "id": "obj-35", 
                    "patching_rect": [
                        274.666626, 
                        471.0, 
                        100.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.change", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-43", 
                    "patching_rect": [
                        274.666626, 
                        498.0, 
                        56.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "up", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 12.0, 
                    "id": "obj-32", 
                    "patching_rect": [
                        1152.0, 
                        247.0, 
                        32.5, 
                        18.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "down", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 12.0, 
                    "id": "obj-33", 
                    "patching_rect": [
                        1131.0, 
                        268.0, 
                        39.0, 
                        18.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "select 1 0", 
                    "numinlets": 3, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "bang", 
                        "bang", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-34", 
                    "patching_rect": [
                        1130.0, 
                        222.0, 
                        62.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "up", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 12.0, 
                    "id": "obj-5", 
                    "patching_rect": [
                        808.0, 
                        246.0, 
                        32.5, 
                        18.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "down", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 12.0, 
                    "id": "obj-10", 
                    "patching_rect": [
                        787.0, 
                        267.0, 
                        39.0, 
                        18.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "select 1 0", 
                    "numinlets": 3, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "bang", 
                        "bang", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-28", 
                    "patching_rect": [
                        786.0, 
                        221.0, 
                        62.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "up", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 12.0, 
                    "id": "obj-29", 
                    "patching_rect": [
                        896.0, 
                        247.0, 
                        32.5, 
                        18.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "down", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 12.0, 
                    "id": "obj-22", 
                    "patching_rect": [
                        875.0, 
                        268.0, 
                        39.0, 
                        18.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "select 1 0", 
                    "numinlets": 3, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "bang", 
                        "bang", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-31", 
                    "patching_rect": [
                        874.0, 
                        222.0, 
                        62.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "up", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 12.0, 
                    "id": "obj-24", 
                    "patching_rect": [
                        971.0, 
                        245.0, 
                        32.5, 
                        18.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "down", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 12.0, 
                    "id": "obj-36", 
                    "patching_rect": [
                        950.0, 
                        266.0, 
                        39.0, 
                        18.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "select 1 0", 
                    "numinlets": 3, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "bang", 
                        "bang", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-37", 
                    "patching_rect": [
                        949.0, 
                        220.0, 
                        62.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "up", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 12.0, 
                    "id": "obj-38", 
                    "patching_rect": [
                        1059.0, 
                        246.0, 
                        32.5, 
                        18.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "down", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 12.0, 
                    "id": "obj-39", 
                    "patching_rect": [
                        1038.0, 
                        267.0, 
                        39.0, 
                        18.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "select 1 0", 
                    "numinlets": 3, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "bang", 
                        "bang", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-40", 
                    "patching_rect": [
                        1037.0, 
                        221.0, 
                        62.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "loadmess interval 40", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-41", 
                    "patching_rect": [
                        994.0, 
                        107.0, 
                        121.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "modifiers", 
                    "numinlets": 1, 
                    "numoutlets": 5, 
                    "outlettype": [
                        "int", 
                        "int", 
                        "int", 
                        "int", 
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-42", 
                    "patching_rect": [
                        994.0, 
                        135.0, 
                        73.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "down", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 11.0, 
                    "id": "obj-20", 
                    "patching_rect": [
                        208.0, 
                        241.0, 
                        37.0, 
                        17.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "up", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 11.0, 
                    "id": "obj-21", 
                    "patching_rect": [
                        168.0, 
                        241.0, 
                        32.5, 
                        17.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "right", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 11.0, 
                    "id": "obj-15", 
                    "patching_rect": [
                        135.5, 
                        241.0, 
                        32.5, 
                        17.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "left", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 11.0, 
                    "id": "obj-17", 
                    "patching_rect": [
                        95.5, 
                        241.0, 
                        32.5, 
                        17.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "esc", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 11.0, 
                    "id": "obj-4", 
                    "patching_rect": [
                        63.0, 
                        241.0, 
                        32.5, 
                        17.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "delete", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 11.0, 
                    "id": "obj-16", 
                    "patching_rect": [
                        23.0, 
                        241.0, 
                        40.0, 
                        17.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "sel 127 27 28 29 30 31 32", 
                    "numinlets": 8, 
                    "numoutlets": 8, 
                    "outlettype": [
                        "bang", 
                        "bang", 
                        "bang", 
                        "bang", 
                        "bang", 
                        "bang", 
                        "bang", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-11", 
                    "patching_rect": [
                        82.666656, 
                        182.0, 
                        138.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.keyboard\n\nrama, 2013\nadrian, 2014", 
                    "numinlets": 1, 
                    "linecount": 4, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 11.0, 
                    "id": "obj-30", 
                    "patching_rect": [
                        675.0, 
                        75.0, 
                        181.0, 
                        56.0
                    ]
                }
            }, 
            {
                "box": {
                    "comment": "", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "outlet", 
                    "id": "obj-27", 
                    "patching_rect": [
                        274.666626, 
                        558.0, 
                        25.0, 
                        25.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "loadmess 0", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-25", 
                    "patching_rect": [
                        541.0, 
                        132.0, 
                        67.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "t i up i i", 
                    "numinlets": 1, 
                    "numoutlets": 4, 
                    "outlettype": [
                        "int", 
                        "up", 
                        "int", 
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-23", 
                    "patching_rect": [
                        359.148102, 
                        148.0, 
                        58.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "t i down i i", 
                    "numinlets": 1, 
                    "numoutlets": 4, 
                    "outlettype": [
                        "int", 
                        "down", 
                        "int", 
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-19", 
                    "patching_rect": [
                        263.666656, 
                        148.0, 
                        58.0, 
                        19.0
                    ]
                }
            }, 
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
                    "fontsize": 11.0, 
                    "parameter_enable": 0, 
                    "id": "obj-18", 
                    "patching_rect": [
                        433.0, 
                        309.0, 
                        50.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "t b -1", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "bang", 
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-14", 
                    "patching_rect": [
                        473.0, 
                        220.0, 
                        36.0, 
                        19.0
                    ]
                }
            }, 
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
                    "fontsize": 11.0, 
                    "id": "obj-13", 
                    "patching_rect": [
                        430.0, 
                        220.0, 
                        32.5, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "accum", 
                    "numinlets": 3, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-12", 
                    "patching_rect": [
                        433.0, 
                        268.0, 
                        46.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "append 0", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-9", 
                    "patching_rect": [
                        591.0, 
                        221.0, 
                        56.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "append 1", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-8", 
                    "patching_rect": [
                        529.0, 
                        221.0, 
                        56.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "poly 127", 
                    "numinlets": 2, 
                    "numoutlets": 4, 
                    "outlettype": [
                        "int", 
                        "int", 
                        "int", 
                        "list"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-7", 
                    "patching_rect": [
                        529.0, 
                        256.0, 
                        59.5, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "itoa", 
                    "numinlets": 3, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-6", 
                    "patching_rect": [
                        263.666656, 
                        247.0, 
                        46.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /key/name /key/state down /key/number /shift /capslock /option /control /command", 
                    "numinlets": 8, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-3", 
                    "patching_rect": [
                        274.666626, 
                        370.0, 
                        445.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "keyup", 
                    "numinlets": 0, 
                    "numoutlets": 4, 
                    "outlettype": [
                        "int", 
                        "int", 
                        "int", 
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-2", 
                    "patching_rect": [
                        356.5, 
                        73.0, 
                        59.5, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "key", 
                    "numinlets": 0, 
                    "numoutlets": 4, 
                    "outlettype": [
                        "int", 
                        "int", 
                        "int", 
                        "int"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        263.666656, 
                        73.0, 
                        59.5, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "stop", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 11.0, 
                    "id": "obj-26", 
                    "patching_rect": [
                        650.0, 
                        226.0, 
                        32.5, 
                        17.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            171.0, 
            83.0, 
            1269.0, 
            702.0
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
                        "obj-19", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-1", 
                        3
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-3", 
                        2
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
                        "obj-3", 
                        3
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
                        "obj-15", 
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
                        "obj-16", 
                        0
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
                        "obj-17", 
                        0
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
                        "obj-20", 
                        0
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
                        "obj-21", 
                        0
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
                        "obj-4", 
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
                        "obj-45", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-11", 
                        7
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
                        "obj-12", 
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
                        "obj-13", 
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
                        "obj-3", 
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
                        "obj-3", 
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
                        "obj-3", 
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
                        "obj-44", 
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
                        "obj-11", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-19", 
                        2
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
                        "obj-19", 
                        1
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
                        "obj-19", 
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
                        "obj-2", 
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
                        "obj-2", 
                        3
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-3", 
                        2
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
                        "obj-3", 
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
                        "obj-3", 
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
                        "obj-3", 
                        4
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
                        "obj-11", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-23", 
                        2
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
                        "obj-23", 
                        1
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
                        "obj-23", 
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
                        "obj-24", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-3", 
                        5
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
                        "obj-12", 
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
                        "obj-7", 
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
                        "obj-10", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-28", 
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
                        "obj-29", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-3", 
                        4
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
                        "obj-35", 
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
                        "obj-22", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-31", 
                        1
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
                        "obj-32", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-3", 
                        7
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
                        "obj-3", 
                        7
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
                        "obj-32", 
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
                        "obj-33", 
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
                        "obj-43", 
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
                        "obj-3", 
                        5
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
                        "obj-24", 
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
                        "obj-36", 
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
                        "obj-3", 
                        6
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
                        6
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
                        "obj-38", 
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
                        "obj-39", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-41", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-42", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-42", 
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
                        "obj-42", 
                        1
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
                        "obj-42", 
                        4
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
                        "obj-42", 
                        2
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
                        "obj-42", 
                        3
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
                        "obj-43", 
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
                        "obj-43", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-46", 
                        1
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
                        "obj-35", 
                        1
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
                        "obj-3", 
                        3
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
                        "obj-26", 
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
                        "obj-3", 
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
                        "obj-44", 
                        1
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
                "name": "o.pack.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.change.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.union.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }
        ]
    }
}