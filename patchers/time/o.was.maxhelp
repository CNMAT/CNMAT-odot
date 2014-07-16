{
    "patcher": {
        "fileversion": 1, 
        "imprint": 0, 
        "boxanimatetime": 200, 
        "devicewidth": 0.0, 
        "default_fontsize": 20.0, 
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
                    "text": "o.expr /dx = /horizontal - /was/horizontal \\; /dy = /vertical - /was/vertical", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-6", 
                    "patching_rect": [
                        80.0, 
                        154.0, 
                        664.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/was/horizontal : 712,\n/was/vertical : 190,\n/horizontal : 712,\n/vertical : 190,\n/shift : \"up\",\n/capslock : \"up\",\n/option : \"up\",\n/control : \"up\",\n/command : \"up\",\n/button/is : \"up\",\n/dx : 0,\n/dy : 0", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 12, 
                    "fontsize": 20.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-5", 
                    "patching_rect": [
                        85.0, 
                        212.0, 
                        286.0, 
                        275.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.was /horizontal /vertical", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-2", 
                    "patching_rect": [
                        78.0, 
                        107.0, 
                        235.0, 
                        29.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.mouse", 
                    "numinlets": 0, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 20.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        78.0, 
                        68.0, 
                        108.0, 
                        29.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            135.0, 
            91.0, 
            815.0, 
            497.0
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
                        "obj-2", 
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
                        "obj-6", 
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
                        "obj-5", 
                        1
                    ]
                }
            }
        ], 
        "statusbarvisible": 2, 
        "gridsnaponopen": 0, 
        "bglocked": 0, 
        "dependency_cache": [
            {
                "patcherrelativepath": "../io", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.mouse.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/io"
            }, 
            {
                "patcherrelativepath": "..", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.out.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions"
            }, 
            {
                "patcherrelativepath": "..", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.port.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions"
            }, 
            {
                "patcherrelativepath": "../aspect", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.aspect.joinpoint.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/aspect"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.was.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/time"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.collect.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.pack.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.var.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.if.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.union.mxo"
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
                "name": "o.route.mxo"
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
                "name": "o.cond.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.intersection.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.expr.mxo"
            }
        ]
    }
}