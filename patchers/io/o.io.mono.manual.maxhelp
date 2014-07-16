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
                    "presentation_rect": [
                        21.0, 
                        230.0, 
                        0.0, 
                        0.0
                    ], 
                    "name": "o.io.mono.manual.maxpat", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "bpatcher", 
                    "lockeddragscroll": 1, 
                    "id": "obj-2", 
                    "patching_rect": [
                        19.0, 
                        294.0, 
                        516.0, 
                        60.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/key/number : 77.,\n/key/velocity : 0.299213,\n/key/down : false,\n/key/up : true,\n/instructions : \"Key height represents velocity\",\n/range/key/velocity : [0., 1.],\n/range/key/number : [0., 128.]", 
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
                    "id": "obj-5", 
                    "patching_rect": [
                        119.0, 
                        176.0, 
                        315.0, 
                        100.0
                    ]
                }
            }, 
            {
                "box": {
                    "name": "o.io.mono.manual.maxpat", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "bpatcher", 
                    "lockeddragscroll": 1, 
                    "id": "obj-3", 
                    "patching_rect": [
                        21.0, 
                        82.0, 
                        516.0, 
                        60.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            661.0, 
            278.0, 
            600.0, 
            426.0
        ], 
        "lines": [
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
                        "obj-3", 
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
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.mono.manual.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/io"
            }, 
            {
                "patcherrelativepath": "../core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.in.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/core"
            }, 
            {
                "patcherrelativepath": "../core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.port.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/core"
            }, 
            {
                "patcherrelativepath": "../../experimental/aspect", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.aspect.joinpoint.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/experimental/aspect"
            }, 
            {
                "patcherrelativepath": "../core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.out.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/core"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
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
                "name": "o.cond.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }
        ]
    }
}