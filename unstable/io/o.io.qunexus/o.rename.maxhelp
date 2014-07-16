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
            "minor": 0, 
            "revision": 4
        }, 
        "boxes": [
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "rename an address.  addresses must match completely.", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "fontsize": 12.0, 
                    "id": "obj-6", 
                    "patching_rect": [
                        234.0, 
                        119.0, 
                        308.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/foo/bar : 21,\n/joe : \"thing\"", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
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
                    "id": "obj-3", 
                    "patching_rect": [
                        34.0, 
                        143.0, 
                        130.0, 
                        35.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/foo : 21,\n/joe : \"thing\"", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
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
                    "id": "obj-2", 
                    "patching_rect": [
                        34.0, 
                        54.0, 
                        130.0, 
                        35.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.rename /foo /bar", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        34.0, 
                        101.0, 
                        109.0, 
                        20.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            25.0, 
            69.0, 
            640.0, 
            480.0
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
                        "obj-3", 
                        1
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
                        "obj-1", 
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
                "patcherrelativepath": "", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.rename.maxpat", 
                "bootpath": "/Users/john/Development/cnmat/trunk/max/externals/odot/patches/abstractions"
            }, 
            {
                "type": "iLaX", 
                "name": "o.select.mxo"
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
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.var.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }
        ]
    }
}