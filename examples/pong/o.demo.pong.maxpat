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
                    "text": "o.pong.sonify", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        326.0, 
                        124.0, 
                        82.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pong.visualize", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-27", 
                    "patching_rect": [
                        205.0, 
                        125.0, 
                        97.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "comment": "", 
                    "numinlets": 0, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "inlet", 
                    "id": "obj-26", 
                    "patching_rect": [
                        29.0, 
                        22.0, 
                        25.0, 
                        25.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.in @name main", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-25", 
                    "patching_rect": [
                        29.0, 
                        58.0, 
                        105.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pong.engine", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-24", 
                    "patching_rect": [
                        205.0, 
                        78.0, 
                        87.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pong.bats", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-21", 
                    "patching_rect": [
                        42.0, 
                        129.0, 
                        73.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/game/start : true", 
                    "numinlets": 2, 
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
                    "id": "obj-9", 
                    "patching_rect": [
                        237.0, 
                        42.0, 
                        150.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/was/now : 2014-06-08T06:08:34.714473Z,\n/was/ball/velocity : [1.6, -2.04],\n/ball/position : [-0.494644, -0.444329],\n/ball/rate : [0.4, 0.51],\n/bat/left : [-0.95, 0.],\n/bat/right : [0.95, 0.],\n/bat/halfheight : 0.15,\n/ball/left/direction : [-1, 1],\n/ball/right/direction : [-1, 1],\n/ball/left/phase : [273.319, 0],\n/ball/right/phase : [684.867, 0],\n/range/ball/position : [-1, 1],\n/range/bats/position : [-1, 1],\n/game/start : false,\n/holdoff : 2014-06-08T06:08:34.563763Z,\n/start/time : 2014-06-08T06:01:34.447657Z,\n/hold : 2014-06-08T06:08:25.812780Z,\n/now : 2014-06-08T06:08:34.763504Z,\n/ball/velocity : [1.6, -2.04],\n/ball/acceleration : [2.37758e-12, 2.44551e-13],\n/bounce : [false, false]", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 21, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-7", 
                    "patching_rect": [
                        507.0, 
                        154.0, 
                        264.0, 
                        288.0
                    ]
                }
            }, 
            {
                "box": {
                    "comment": "", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "outlet", 
                    "id": "obj-14", 
                    "patching_rect": [
                        14.0, 
                        232.0, 
                        25.0, 
                        25.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.out @name main", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-13", 
                    "patching_rect": [
                        14.0, 
                        201.0, 
                        112.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "name": "pong", 
                    "varname": "pong", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "maxclass": "jit.pwindow", 
                    "id": "obj-2", 
                    "patching_rect": [
                        129.0, 
                        186.0, 
                        361.0, 
                        249.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.gl pong", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-10", 
                    "patching_rect": [
                        204.0, 
                        157.0, 
                        73.0, 
                        20.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            338.0, 
            44.0, 
            1074.0, 
            737.0
        ], 
        "lines": [
            {
                "patchline": {
                    "disabled": 0, 
                    "source": [
                        "obj-13", 
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
                        "obj-21", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-24", 
                        0
                    ], 
                    "midpoints": [
                        51.5, 
                        170.0, 
                        18.0, 
                        170.0, 
                        18.0, 
                        54.0, 
                        214.5, 
                        54.0
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
                        "obj-1", 
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
                        "obj-13", 
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
                        "obj-21", 
                        0
                    ], 
                    "midpoints": [
                        214.5, 
                        112.0, 
                        159.0, 
                        112.0, 
                        159.0, 
                        111.0, 
                        51.5, 
                        111.0
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
                        "obj-27", 
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
                        "obj-7", 
                        1
                    ], 
                    "midpoints": [
                        214.5, 
                        104.0, 
                        508.0, 
                        104.0, 
                        508.0, 
                        104.0, 
                        761.5, 
                        104.0
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
                        "obj-24", 
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
                        "obj-25", 
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
                        "obj-10", 
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
                        "obj-24", 
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
                "patcherrelativepath": "../../abstractions/io/graphics", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.gl.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/io/graphics"
            }, 
            {
                "patcherrelativepath": "../../abstractions/io/graphics", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.gl.platohelper.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/io/graphics"
            }, 
            {
                "patcherrelativepath": "../../abstractions/programming", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.listiter.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/programming"
            }, 
            {
                "patcherrelativepath": "../../experimental", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.oscbundle.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/experimental"
            }, 
            {
                "patcherrelativepath": "../../abstractions/io/graphics", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.gltexthelper.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/io/graphics"
            }, 
            {
                "patcherrelativepath": "../../abstractions/core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.out.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/core"
            }, 
            {
                "patcherrelativepath": "../../abstractions/core", 
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
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.pong.bats.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/demos/pong"
            }, 
            {
                "patcherrelativepath": "../../abstractions/core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.in.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/core"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.pong.engine.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/demos/pong"
            }, 
            {
                "patcherrelativepath": "../../abstractions/core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.righttoleft.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/core"
            }, 
            {
                "patcherrelativepath": "../../abstractions/time", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.metro.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/time"
            }, 
            {
                "patcherrelativepath": "../../abstractions/core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.init.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/core"
            }, 
            {
                "patcherrelativepath": "../../abstractions", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.arguments.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions"
            }, 
            {
                "patcherrelativepath": "../../abstractions/time", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.was.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/abstractions/time"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.pong.visualize.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/demos/pong"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.pong.sonify.maxpat", 
                "bootpath": "/Users/adrian2013/CNMAT-odot/demos/pong"
            }, 
            {
                "patcherrelativepath": "../../../Documents/Max/Packages/CompletelyUnfinished/patchers", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "v.sdif.resonance.maxpat", 
                "bootpath": "/Users/adrian2013/Documents/Max/Packages/CompletelyUnfinished/patchers"
            }, 
            {
                "patcherrelativepath": "../../../Documents/Max/Packages/vdot/javascript", 
                "implicit": 1, 
                "type": "TEXT", 
                "name": "c.parentsize.js", 
                "bootpath": "/Users/adrian2013/Documents/Max/Packages/vdot/javascript"
            }, 
            {
                "patcherrelativepath": "../../../Documents/Max/Packages/CompletelyUnfinished/patchers", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.restransformmap.maxpat", 
                "bootpath": "/Users/adrian2013/Documents/Max/Packages/CompletelyUnfinished/patchers"
            }, 
            {
                "type": "iLaX", 
                "name": "o.iterate.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.cond.mxo"
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
                "name": "o.expr.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.if.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.select.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.atomize.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.var.mxo"
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
                "name": "o.context.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.collect.mxo"
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
                "name": "o.timetag.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.difference.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.intersection.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "SDIF-buffer.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "SDIF-tuples.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "resonators~.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "resdisplay.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "res-transform.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "SDIF-fileinfo.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "OSC-route.mxo"
            }
        ]
    }
}