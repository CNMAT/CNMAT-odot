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
                    "text": "<< o.io.hid2 as bpatcher", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 11.0, 
                    "id": "obj-9", 
                    "patching_rect": [
                        394.0, 
                        240.0, 
                        150.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/6 : 0,\n/5 : 0,\n/4 : 0,\n/3 : 0", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 4, 
                    "fontsize": 11.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-7", 
                    "patching_rect": [
                        56.0, 
                        398.0, 
                        150.0, 
                        56.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "getdevices", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 11.0, 
                    "id": "obj-6", 
                    "patching_rect": [
                        53.0, 
                        204.0, 
                        63.0, 
                        17.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "o.message", 
                    "fontsize": 11.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-4", 
                    "patching_rect": [
                        490.0, 
                        392.0, 
                        260.0, 
                        19.0
                    ]
                }
            }, 
            {
                "box": {
                    "name": "o.io.hid2.maxpat", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        ""
                    ], 
                    "maxclass": "bpatcher", 
                    "border": 1, 
                    "id": "obj-3", 
                    "patching_rect": [
                        53.0, 
                        234.5, 
                        313.0, 
                        38.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.hid2", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 11.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        394.0, 
                        204.0, 
                        52.0, 
                        19.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            468.0, 
            97.0, 
            972.0, 
            552.0
        ], 
        "lines": [
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-3", 
                        1
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-4", 
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
                        "obj-7", 
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
                        "obj-3", 
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
                "name": "o.io.hid2.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/experimental/io"
            }, 
            {
                "patcherrelativepath": "../../../../../Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "thru.maxpat", 
                "bootpath": "/Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches"
            }, 
            {
                "type": "iLaX", 
                "name": "o.pack.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.expr.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.collect.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }
        ]
    }
}