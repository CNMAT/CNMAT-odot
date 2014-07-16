{
    "patcher": {
        "gridsize": [
            10.0, 
            10.0
        ], 
        "defrect": [
            349.0, 
            155.0, 
            1017.0, 
            645.0
        ], 
        "fileversion": 1, 
        "openinpresentation": 0, 
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-1", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-2", 
                        1
                    ], 
                    "midpoints": []
                }
            }, 
            {
                "patchline": {
                    "source": [
                        "obj-6", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-3", 
                        0
                    ], 
                    "midpoints": []
                }
            }, 
            {
                "patchline": {
                    "source": [
                        "obj-3", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-1", 
                        0
                    ], 
                    "midpoints": []
                }
            }, 
            {
                "patchline": {
                    "source": [
                        "obj-4", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-3", 
                        0
                    ], 
                    "midpoints": []
                }
            }, 
            {
                "patchline": {
                    "source": [
                        "obj-5", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-3", 
                        0
                    ], 
                    "midpoints": []
                }
            }
        ], 
        "enablevscroll": 1, 
        "default_fontface": 0, 
        "devicewidth": 0.0, 
        "gridonopen": 0, 
        "imprint": 0, 
        "boxanimatetime": 200, 
        "boxes": [
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/bar 1 2 3 4 5, bang", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 12.0, 
                    "id": "obj-6", 
                    "patching_rect": [
                        260.0, 
                        90.0, 
                        115.0, 
                        18.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/foo : 1,\n/y : 2,\n/z : 3,\n/a : 4,\n/xx : 5,\n/ww : 0,\n/ii : 0,\n/ur : 0,\n/ae : 0", 
                    "numinlets": 2, 
                    "linecount": 9, 
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
                    "id": "obj-2", 
                    "patching_rect": [
                        100.0, 
                        310.0, 
                        209.0, 
                        131.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/foo 1 2 3 4 5, bang", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 12.0, 
                    "id": "obj-4", 
                    "patching_rect": [
                        220.0, 
                        60.0, 
                        114.0, 
                        18.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/foo 1 2 3, bang", 
                    "numinlets": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 12.0, 
                    "id": "obj-5", 
                    "patching_rect": [
                        100.0, 
                        60.0, 
                        94.0, 
                        18.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "OpenSoundControl", 
                    "numinlets": 1, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "", 
                        "", 
                        "OSCTimeTag"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-3", 
                    "patching_rect": [
                        100.0, 
                        110.0, 
                        113.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.explode /foo /foo /y /z /a /xx /ww /ii /ur /ae", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        100.0, 
                        160.0, 
                        240.0, 
                        20.0
                    ]
                }
            }
        ], 
        "gridsnaponopen": 0, 
        "bglocked": 0, 
        "enablehscroll": 1, 
        "openrect": [
            0.0, 
            0.0, 
            0.0, 
            0.0
        ], 
        "toolbarvisible": 1, 
        "default_fontname": "Arial", 
        "default_fontsize": 12.0, 
        "rect": [
            349.0, 
            155.0, 
            1017.0, 
            645.0
        ]
    }
}