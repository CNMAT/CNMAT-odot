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
                    "text": "/received/time : 2014-05-25T01:03:37.639124Z,\n/device/time : 1900-01-01T00:00:00.000000Z,\n/ping : [\"169.254.1.1\", \"00:1E:C0:11:68:F8\", \"v0.15\"],\n/units/rotations : \"degrees/second\",\n/units/accelerations : \"g\",\n/units/orientations : \"Ga\",\n/units/temperature : \"Celsius\",\n/units/battery : \"Volts\",\n/battery : 3.91855,\n/analog/a : 0.0253937,\n/analog/b : 0.0282017,\n/analog/c : 0.0312538,\n/analog/d : 0.0378464,\n/analog/e : 0.0361372,\n/analog/f : 0.0321084,\n/analog/g : 0.024417,\n/analog/h : 0.024295,\n/analog/i : 0.0233183,\n/analog/j : 0.0224637,\n/analog/k : 0.0224637,\n/analog/l : 0.0223416,\n/analog/m : 0.0231962,\n/analog/n : 0.0233183,\n/analog/o : 0.0224637,\n/analog/p : 0.0224637,\n/rotations : [-2.86585, 1.40244, -0.609756],\n/accelerations : [0.455078, -0.161133, 0.918457],\n/orientations : [-0.246154, -0.164103, -0.405128],\n/temperature : 43.5441,\n/unique/id : \"mac:00:1E:C0:11:68:F8\"", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 42, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-2", 
                    "patching_rect": [
                        137.0, 
                        274.0, 
                        150.0, 
                        570.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.x-osc", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        109.0, 
                        136.0, 
                        62.0, 
                        20.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            771.0, 
            75.0, 
            902.0, 
            656.0
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
                "patcherrelativepath": "../../../abstractions/io", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.x-osc.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/io"
            }, 
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
                "name": "o.iterate.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.validate.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.timetag.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "OpenSoundControl.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.var.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.collect.mxo"
            }
        ]
    }
}