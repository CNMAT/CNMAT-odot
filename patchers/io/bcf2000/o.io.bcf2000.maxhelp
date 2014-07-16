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
                    "name": "o.io.midi.panel.maxpat", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "bpatcher", 
                    "id": "obj-5", 
                    "patching_rect": [
                        451.0, 
                        256.0, 
                        156.0, 
                        47.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /encoder/d/?", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-56", 
                    "patching_rect": [
                        11.0, 
                        156.0, 
                        116.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/ 127.", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "float"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 9.0, 
                    "id": "obj-57", 
                    "patching_rect": [
                        11.0, 
                        126.0, 
                        46.0, 
                        17.0
                    ]
                }
            }, 
            {
                "box": {
                    "outlettype": [
                        "float"
                    ], 
                    "numinlets": 1, 
                    "id": "obj-58", 
                    "numoutlets": 1, 
                    "bgcolor": [
                        0.866667, 
                        0.866667, 
                        0.866667, 
                        1.0
                    ], 
                    "maxclass": "dial", 
                    "parameter_enable": 0, 
                    "needlecolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "vtracking": 0, 
                    "fgcolor": [
                        0.666667, 
                        0.666667, 
                        0.666667, 
                        1.0
                    ], 
                    "patching_rect": [
                        12.0, 
                        77.0, 
                        40.0, 
                        40.0
                    ], 
                    "outlinecolor": [
                        0.882353, 
                        0.882353, 
                        0.882353, 
                        1.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /encoder/c/?", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-59", 
                    "patching_rect": [
                        64.0, 
                        129.0, 
                        115.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/ 127.", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "float"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 9.0, 
                    "id": "obj-60", 
                    "patching_rect": [
                        64.0, 
                        104.0, 
                        46.0, 
                        17.0
                    ]
                }
            }, 
            {
                "box": {
                    "outlettype": [
                        "float"
                    ], 
                    "numinlets": 1, 
                    "id": "obj-61", 
                    "numoutlets": 1, 
                    "bgcolor": [
                        0.866667, 
                        0.866667, 
                        0.866667, 
                        1.0
                    ], 
                    "maxclass": "dial", 
                    "parameter_enable": 0, 
                    "needlecolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "vtracking": 0, 
                    "fgcolor": [
                        0.666667, 
                        0.666667, 
                        0.666667, 
                        1.0
                    ], 
                    "patching_rect": [
                        65.0, 
                        55.0, 
                        40.0, 
                        40.0
                    ], 
                    "outlinecolor": [
                        0.882353, 
                        0.882353, 
                        0.882353, 
                        1.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /encoder/b/?", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-53", 
                    "patching_rect": [
                        116.0, 
                        104.0, 
                        116.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/ 127.", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "float"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 9.0, 
                    "id": "obj-54", 
                    "patching_rect": [
                        116.0, 
                        77.0, 
                        46.0, 
                        17.0
                    ]
                }
            }, 
            {
                "box": {
                    "outlettype": [
                        "float"
                    ], 
                    "numinlets": 1, 
                    "id": "obj-55", 
                    "numoutlets": 1, 
                    "bgcolor": [
                        0.866667, 
                        0.866667, 
                        0.866667, 
                        1.0
                    ], 
                    "maxclass": "dial", 
                    "parameter_enable": 0, 
                    "needlecolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "vtracking": 0, 
                    "fgcolor": [
                        0.666667, 
                        0.666667, 
                        0.666667, 
                        1.0
                    ], 
                    "patching_rect": [
                        117.0, 
                        28.0, 
                        40.0, 
                        40.0
                    ], 
                    "outlinecolor": [
                        0.882353, 
                        0.882353, 
                        0.882353, 
                        1.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /encoder/a/?", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-52", 
                    "patching_rect": [
                        169.0, 
                        77.0, 
                        116.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "parameter_enable": 0, 
                    "contdata": 1, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "numinlets": 1, 
                    "maxclass": "multislider", 
                    "peakcolor": [
                        0.498039, 
                        0.498039, 
                        0.498039, 
                        1.0
                    ], 
                    "candicane6": [
                        0.733333, 
                        0.035294, 
                        0.788235, 
                        1.0
                    ], 
                    "candicane7": [
                        0.878431, 
                        0.243137, 
                        0.145098, 
                        1.0
                    ], 
                    "candicane4": [
                        0.439216, 
                        0.619608, 
                        0.070588, 
                        1.0
                    ], 
                    "candicane5": [
                        0.584314, 
                        0.827451, 
                        0.431373, 
                        1.0
                    ], 
                    "candicane2": [
                        0.145098, 
                        0.203922, 
                        0.356863, 
                        1.0
                    ], 
                    "candicane3": [
                        0.290196, 
                        0.411765, 
                        0.713726, 
                        1.0
                    ], 
                    "setminmax": [
                        0.0, 
                        1.0
                    ], 
                    "patching_rect": [
                        300.0, 
                        100.0, 
                        12.0, 
                        82.0
                    ], 
                    "id": "obj-48", 
                    "candicane8": [
                        0.027451, 
                        0.447059, 
                        0.501961, 
                        1.0
                    ], 
                    "numoutlets": 2
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /fader/[5-8]", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-49", 
                    "patching_rect": [
                        321.0, 
                        197.0, 
                        107.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "parameter_enable": 0, 
                    "contdata": 1, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "numinlets": 1, 
                    "maxclass": "multislider", 
                    "peakcolor": [
                        0.498039, 
                        0.498039, 
                        0.498039, 
                        1.0
                    ], 
                    "candicane6": [
                        0.733333, 
                        0.035294, 
                        0.788235, 
                        1.0
                    ], 
                    "candicane7": [
                        0.878431, 
                        0.243137, 
                        0.145098, 
                        1.0
                    ], 
                    "candicane4": [
                        0.439216, 
                        0.619608, 
                        0.070588, 
                        1.0
                    ], 
                    "candicane5": [
                        0.584314, 
                        0.827451, 
                        0.431373, 
                        1.0
                    ], 
                    "candicane2": [
                        0.145098, 
                        0.203922, 
                        0.356863, 
                        1.0
                    ], 
                    "candicane3": [
                        0.290196, 
                        0.411765, 
                        0.713726, 
                        1.0
                    ], 
                    "setminmax": [
                        0.0, 
                        1.0
                    ], 
                    "patching_rect": [
                        284.0, 
                        129.0, 
                        12.0, 
                        82.0
                    ], 
                    "id": "obj-50", 
                    "candicane8": [
                        0.027451, 
                        0.447059, 
                        0.501961, 
                        1.0
                    ], 
                    "numoutlets": 2
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /fader/?", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-51", 
                    "patching_rect": [
                        300.0, 
                        227.0, 
                        90.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "parameter_enable": 0, 
                    "contdata": 1, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "numinlets": 1, 
                    "maxclass": "multislider", 
                    "peakcolor": [
                        0.498039, 
                        0.498039, 
                        0.498039, 
                        1.0
                    ], 
                    "candicane6": [
                        0.733333, 
                        0.035294, 
                        0.788235, 
                        1.0
                    ], 
                    "candicane7": [
                        0.878431, 
                        0.243137, 
                        0.145098, 
                        1.0
                    ], 
                    "candicane4": [
                        0.439216, 
                        0.619608, 
                        0.070588, 
                        1.0
                    ], 
                    "candicane5": [
                        0.584314, 
                        0.827451, 
                        0.431373, 
                        1.0
                    ], 
                    "candicane2": [
                        0.145098, 
                        0.203922, 
                        0.356863, 
                        1.0
                    ], 
                    "candicane3": [
                        0.290196, 
                        0.411765, 
                        0.713726, 
                        1.0
                    ], 
                    "setminmax": [
                        0.0, 
                        1.0
                    ], 
                    "patching_rect": [
                        389.0, 
                        9.0, 
                        12.0, 
                        82.0
                    ], 
                    "id": "obj-44", 
                    "candicane8": [
                        0.027451, 
                        0.447059, 
                        0.501961, 
                        1.0
                    ], 
                    "numoutlets": 2
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /fader/[1-4]", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-45", 
                    "patching_rect": [
                        410.0, 
                        77.0, 
                        107.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "parameter_enable": 0, 
                    "contdata": 1, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "numinlets": 1, 
                    "maxclass": "multislider", 
                    "peakcolor": [
                        0.498039, 
                        0.498039, 
                        0.498039, 
                        1.0
                    ], 
                    "candicane6": [
                        0.733333, 
                        0.035294, 
                        0.788235, 
                        1.0
                    ], 
                    "candicane7": [
                        0.878431, 
                        0.243137, 
                        0.145098, 
                        1.0
                    ], 
                    "candicane4": [
                        0.439216, 
                        0.619608, 
                        0.070588, 
                        1.0
                    ], 
                    "candicane5": [
                        0.584314, 
                        0.827451, 
                        0.431373, 
                        1.0
                    ], 
                    "candicane2": [
                        0.145098, 
                        0.203922, 
                        0.356863, 
                        1.0
                    ], 
                    "candicane3": [
                        0.290196, 
                        0.411765, 
                        0.713726, 
                        1.0
                    ], 
                    "setminmax": [
                        0.0, 
                        1.0
                    ], 
                    "patching_rect": [
                        368.0, 
                        39.0, 
                        12.0, 
                        82.0
                    ], 
                    "id": "obj-46", 
                    "candicane8": [
                        0.027451, 
                        0.447059, 
                        0.501961, 
                        1.0
                    ], 
                    "numoutlets": 2
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /fader/{1\\,3\\,5\\,7}", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-47", 
                    "patching_rect": [
                        389.0, 
                        107.0, 
                        128.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "parameter_enable": 0, 
                    "contdata": 1, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "numinlets": 1, 
                    "maxclass": "multislider", 
                    "peakcolor": [
                        0.498039, 
                        0.498039, 
                        0.498039, 
                        1.0
                    ], 
                    "candicane6": [
                        0.733333, 
                        0.035294, 
                        0.788235, 
                        1.0
                    ], 
                    "candicane7": [
                        0.878431, 
                        0.243137, 
                        0.145098, 
                        1.0
                    ], 
                    "candicane4": [
                        0.439216, 
                        0.619608, 
                        0.070588, 
                        1.0
                    ], 
                    "candicane5": [
                        0.584314, 
                        0.827451, 
                        0.431373, 
                        1.0
                    ], 
                    "candicane2": [
                        0.145098, 
                        0.203922, 
                        0.356863, 
                        1.0
                    ], 
                    "candicane3": [
                        0.290196, 
                        0.411765, 
                        0.713726, 
                        1.0
                    ], 
                    "setminmax": [
                        0.0, 
                        1.0
                    ], 
                    "patching_rect": [
                        344.0, 
                        39.0, 
                        12.0, 
                        82.0
                    ], 
                    "id": "obj-41", 
                    "candicane8": [
                        0.027451, 
                        0.447059, 
                        0.501961, 
                        1.0
                    ], 
                    "numoutlets": 2
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /fader/[5-8]", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-42", 
                    "patching_rect": [
                        365.0, 
                        138.0, 
                        107.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "parameter_enable": 0, 
                    "contdata": 1, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "numinlets": 1, 
                    "maxclass": "multislider", 
                    "peakcolor": [
                        0.498039, 
                        0.498039, 
                        0.498039, 
                        1.0
                    ], 
                    "candicane6": [
                        0.733333, 
                        0.035294, 
                        0.788235, 
                        1.0
                    ], 
                    "candicane7": [
                        0.878431, 
                        0.243137, 
                        0.145098, 
                        1.0
                    ], 
                    "candicane4": [
                        0.439216, 
                        0.619608, 
                        0.070588, 
                        1.0
                    ], 
                    "candicane5": [
                        0.584314, 
                        0.827451, 
                        0.431373, 
                        1.0
                    ], 
                    "candicane2": [
                        0.145098, 
                        0.203922, 
                        0.356863, 
                        1.0
                    ], 
                    "candicane3": [
                        0.290196, 
                        0.411765, 
                        0.713726, 
                        1.0
                    ], 
                    "setminmax": [
                        0.0, 
                        1.0
                    ], 
                    "patching_rect": [
                        323.0, 
                        100.0, 
                        12.0, 
                        82.0
                    ], 
                    "id": "obj-39", 
                    "candicane8": [
                        0.027451, 
                        0.447059, 
                        0.501961, 
                        1.0
                    ], 
                    "numoutlets": 2
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /fader/1", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-19", 
                    "patching_rect": [
                        344.0, 
                        168.0, 
                        90.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "int"
                    ], 
                    "maxclass": "toggle", 
                    "parameter_enable": 0, 
                    "id": "obj-8", 
                    "patching_rect": [
                        18.0, 
                        256.0, 
                        22.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /button/bottom/?", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-10", 
                    "patching_rect": [
                        18.0, 
                        288.0, 
                        136.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "int"
                    ], 
                    "maxclass": "toggle", 
                    "parameter_enable": 0, 
                    "id": "obj-3", 
                    "patching_rect": [
                        82.0, 
                        198.0, 
                        22.0, 
                        22.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /encoder_button/?/?", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-2", 
                    "patching_rect": [
                        82.0, 
                        227.0, 
                        156.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "name": "o.io.bcf2000panel.maxpat", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "bpatcher", 
                    "offset": [
                        4.0, 
                        -8.0
                    ], 
                    "lockeddragscroll": 1, 
                    "border": 1, 
                    "id": "obj-11", 
                    "patching_rect": [
                        630.0, 
                        0.0, 
                        673.0, 
                        620.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/channel : 1,\n/encoder_button/d/1 : 0.", 
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
                    "id": "obj-1", 
                    "patching_rect": [
                        339.0, 
                        315.0, 
                        150.0, 
                        47.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /general/?", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-34", 
                    "patching_rect": [
                        48.0, 
                        256.0, 
                        103.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/ 127.", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "float"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 9.0, 
                    "id": "obj-20", 
                    "patching_rect": [
                        169.0, 
                        55.0, 
                        46.0, 
                        17.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.bcf2000", 
                    "numinlets": 2, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 9.0, 
                    "id": "obj-33", 
                    "patching_rect": [
                        339.0, 
                        278.0, 
                        60.0, 
                        17.0
                    ]
                }
            }, 
            {
                "box": {
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "int"
                    ], 
                    "maxclass": "toggle", 
                    "parameter_enable": 0, 
                    "id": "obj-35", 
                    "patching_rect": [
                        48.0, 
                        217.0, 
                        25.0, 
                        25.0
                    ]
                }
            }, 
            {
                "box": {
                    "outlettype": [
                        "float"
                    ], 
                    "numinlets": 1, 
                    "id": "obj-36", 
                    "numoutlets": 1, 
                    "bgcolor": [
                        0.866667, 
                        0.866667, 
                        0.866667, 
                        1.0
                    ], 
                    "maxclass": "dial", 
                    "parameter_enable": 0, 
                    "needlecolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "vtracking": 0, 
                    "fgcolor": [
                        0.666667, 
                        0.666667, 
                        0.666667, 
                        1.0
                    ], 
                    "patching_rect": [
                        170.0, 
                        6.0, 
                        40.0, 
                        40.0
                    ], 
                    "outlinecolor": [
                        0.882353, 
                        0.882353, 
                        0.882353, 
                        1.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "Behringer BCF2000\n\nAdrian Freed 2014,2011,2007\nJohn MacCallum 2007", 
                    "numinlets": 1, 
                    "linecount": 4, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 14.0, 
                    "id": "obj-40", 
                    "patching_rect": [
                        32.0, 
                        378.0, 
                        200.0, 
                        69.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            124.0, 
            122.0, 
            1376.0, 
            649.0
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
                    ], 
                    "midpoints": [
                        27.5, 
                        318.0, 
                        324.0, 
                        318.0, 
                        324.0, 
                        273.0, 
                        348.5, 
                        273.0
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
                        "obj-33", 
                        0
                    ], 
                    "midpoints": [
                        639.5, 
                        621.0, 
                        390.0, 
                        621.0, 
                        390.0, 
                        360.0, 
                        324.0, 
                        360.0, 
                        324.0, 
                        273.0, 
                        348.5, 
                        273.0
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
                        "obj-33", 
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
                        "obj-52", 
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
                        "obj-2", 
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
                        "obj-1", 
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
                        "obj-11", 
                        0
                    ], 
                    "midpoints": [
                        348.5, 
                        297.0, 
                        336.0, 
                        297.0, 
                        336.0, 
                        258.0, 
                        438.0, 
                        258.0, 
                        438.0, 
                        198.0, 
                        615.0, 
                        198.0, 
                        615.0, 
                        0.0, 
                        627.0, 
                        0.0, 
                        627.0, 
                        -3.0, 
                        639.5, 
                        -3.0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-33", 
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
                        "obj-34", 
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
                        "obj-20", 
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
                        "obj-19", 
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
                        "obj-33", 
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
                        "obj-45", 
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
                        "obj-33", 
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
                        "obj-47", 
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
                        "obj-33", 
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
                        "obj-33", 
                        1
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
                        "obj-51", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-51", 
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
                        "obj-52", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-33", 
                        0
                    ], 
                    "midpoints": [
                        178.5, 
                        99.0, 
                        243.0, 
                        99.0, 
                        243.0, 
                        213.0, 
                        270.0, 
                        213.0, 
                        270.0, 
                        264.0, 
                        348.5, 
                        264.0
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
                        "obj-33", 
                        0
                    ], 
                    "midpoints": [
                        125.5, 
                        126.0, 
                        189.0, 
                        126.0, 
                        189.0, 
                        213.0, 
                        270.0, 
                        213.0, 
                        270.0, 
                        264.0, 
                        348.5, 
                        264.0
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
                        "obj-53", 
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
                        "obj-54", 
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
                        "obj-33", 
                        0
                    ], 
                    "midpoints": [
                        20.5, 
                        189.0, 
                        270.0, 
                        189.0, 
                        270.0, 
                        264.0, 
                        348.5, 
                        264.0
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
                        "obj-56", 
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
                        "obj-57", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-59", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-33", 
                        0
                    ], 
                    "midpoints": [
                        73.5, 
                        150.0, 
                        138.0, 
                        150.0, 
                        138.0, 
                        213.0, 
                        270.0, 
                        213.0, 
                        270.0, 
                        264.0, 
                        348.5, 
                        264.0
                    ]
                }
            }, 
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-60", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-59", 
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
                        "obj-60", 
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
                        "obj-10", 
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
                "name": "o.io.bcf2000.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/io/bcf2000"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.bcf2000encoder.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/io/bcf2000"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.bcf2000panel.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/io/bcf2000"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.bfc2000encoder_buthelper.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/io/bcf2000"
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
                "name": "c.bfc2000faderhelper.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/io/bcf2000"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.bfc2000buttonhelper.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/io/bcf2000"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.bfc2000encoderhelper.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/io/bcf2000"
            }, 
            {
                "patcherrelativepath": "../../../../../../Applications/Max 6.1/Cycling '74/jsui-library", 
                "implicit": 1, 
                "type": "TEXT", 
                "name": "jsui_default.js", 
                "bootpath": "/Applications/Max 6.1/Cycling '74/jsui-library"
            }, 
            {
                "patcherrelativepath": "..", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.midi.panel.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/patchers/io"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.expr.codebox.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.pack.mxo"
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
                "name": "o.message.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.compose.mxo"
            }
        ]
    }
}