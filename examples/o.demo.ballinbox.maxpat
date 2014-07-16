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
            "architecture": "x64", 
            "minor": 1, 
            "revision": 6
        }, 
        "boxes": [
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "Bouncing Ball\nAdrian Freed 2014", 
                    "numinlets": 1, 
                    "linecount": 2, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-3", 
                    "patching_rect": [
                        308.0, 
                        375.0, 
                        150.0, 
                        33.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/ball/position ??= [0., 0. ,0.]; \n/ball/step ??= [0.07, 0.025, 0.035];\n/ball/reflected ??= [false ,false ,false];\n/bound/lower ??= [-0.5, -0.5 , -0.5];\n/bound/upper ??= [ 0.5, 0.5, 0.5];\n/ball/position += /ball/step;\n/ball/reflected = (/ball/position > /bound/upper) || (/ball/position < /bound/lower);\n/ball/step *= /ball/reflected ? -1 : 1;", 
                    "numinlets": 1, 
                    "maxclass": "o.expr.codebox", 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "linecount": 8, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-5", 
                    "patching_rect": [
                        152.0, 
                        33.0, 
                        470.0, 
                        127.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/interval : 0.05,\n/metro/started : 2014-07-15T02:58:52.365781Z,\n/n : 1065,\n/metro/next : 2014-07-15T02:59:45.565781Z,\n/rate : 20.,\n/bpm : 1200.,\n/units/interval : \"Seconds\",\n/units/bpm : \"Beats Per Minute\",\n/units/rate : \"Hertz (cycles per second)\",\n/ball/position : [0.56, 0.4, -0.49],\n/ball/step : [-0.07, -0.025, -0.035],\n/ball/reflected : [true, false, false],\n/bound/lower : [-0.5, -0.5, -0.5],\n/bound/upper : [0.5, 0.5, 0.5]", 
                    "numinlets": 1, 
                    "maxclass": "o.display", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 14, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-14", 
                    "patching_rect": [
                        9.0, 
                        241.0, 
                        259.0, 
                        208.0
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
                    "fontsize": 12.0, 
                    "id": "obj-13", 
                    "patching_rect": [
                        42.0, 
                        177.0, 
                        129.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/position = /ball/position?? [0,0,0];\n/color ??= [ 0.9, 0.3 ,0.1 ];\n/radius ??= 0.04 ;\n/shape ??= \"sphere\";", 
                    "numinlets": 1, 
                    "maxclass": "o.expr.codebox", 
                    "numoutlets": 2, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket"
                    ], 
                    "linecount": 4, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-2", 
                    "patching_rect": [
                        282.5, 
                        225.0, 
                        209.0, 
                        73.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.pack /displaylist", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-8", 
                    "patching_rect": [
                        282.5, 
                        311.0, 
                        105.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "name": "o.demo.bouncingball", 
                    "numinlets": 1, 
                    "maxclass": "jit.pwindow", 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        ""
                    ], 
                    "idlemouse": 1, 
                    "id": "obj-7", 
                    "patching_rect": [
                        500.0, 
                        218.5, 
                        246.0, 
                        237.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.gl o.demo.bouncingball", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-10", 
                    "patching_rect": [
                        282.5, 
                        348.0, 
                        157.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.metro /rate 20", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-6", 
                    "patching_rect": [
                        42.0, 
                        140.0, 
                        95.0, 
                        20.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            152.0, 
            69.0, 
            835.0, 
            534.0
        ], 
        "lines": [
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "disabled": 0, 
                    "hidden": 0, 
                    "destination": [
                        "obj-14", 
                        0
                    ], 
                    "source": [
                        "obj-13", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "disabled": 0, 
                    "hidden": 0, 
                    "destination": [
                        "obj-2", 
                        0
                    ], 
                    "source": [
                        "obj-13", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "destination": [
                        "obj-5", 
                        0
                    ], 
                    "disabled": 0, 
                    "source": [
                        "obj-13", 
                        0
                    ], 
                    "midpoints": [
                        51.5, 
                        202.0, 
                        28.0, 
                        202.0, 
                        28.0, 
                        15.0, 
                        161.5, 
                        15.0
                    ], 
                    "hidden": 0
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "disabled": 0, 
                    "hidden": 0, 
                    "destination": [
                        "obj-8", 
                        0
                    ], 
                    "source": [
                        "obj-2", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "disabled": 0, 
                    "hidden": 0, 
                    "destination": [
                        "obj-13", 
                        1
                    ], 
                    "source": [
                        "obj-5", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "disabled": 0, 
                    "hidden": 0, 
                    "destination": [
                        "obj-13", 
                        0
                    ], 
                    "source": [
                        "obj-6", 
                        0
                    ]
                }
            }, 
            {
                "patchline": {
                    "color": [
                        1.0, 
                        0.8, 
                        0.4, 
                        1.0
                    ], 
                    "disabled": 0, 
                    "hidden": 0, 
                    "destination": [
                        "obj-10", 
                        0
                    ], 
                    "source": [
                        "obj-8", 
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
                "patcherrelativepath": "../patchers/time", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.metro.maxpat", 
                "bootpath": "/Users/ilyarostovtsev/Documents/Creative Coding/odot/_full_build_trunk/CNMAT-odot/patchers/time"
            }, 
            {
                "patcherrelativepath": "../patchers", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.arguments.maxpat", 
                "bootpath": "/Users/ilyarostovtsev/Documents/Creative Coding/odot/_full_build_trunk/CNMAT-odot/patchers"
            }, 
            {
                "patcherrelativepath": "../patchers/core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.righttoleft.maxpat", 
                "bootpath": "/Users/ilyarostovtsev/Documents/Creative Coding/odot/_full_build_trunk/CNMAT-odot/patchers/core"
            }, 
            {
                "patcherrelativepath": "../patchers/core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.in.maxpat", 
                "bootpath": "/Users/ilyarostovtsev/Documents/Creative Coding/odot/_full_build_trunk/CNMAT-odot/patchers/core"
            }, 
            {
                "patcherrelativepath": "../patchers/core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.port.maxpat", 
                "bootpath": "/Users/ilyarostovtsev/Documents/Creative Coding/odot/_full_build_trunk/CNMAT-odot/patchers/core"
            }, 
            {
                "patcherrelativepath": "../patchers/aspect", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.aspect.joinpoint.maxpat", 
                "bootpath": "/Users/ilyarostovtsev/Documents/Creative Coding/odot/_full_build_trunk/CNMAT-odot/patchers/aspect"
            }, 
            {
                "patcherrelativepath": "../patchers/core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.out.maxpat", 
                "bootpath": "/Users/ilyarostovtsev/Documents/Creative Coding/odot/_full_build_trunk/CNMAT-odot/patchers/core"
            }, 
            {
                "patcherrelativepath": "../patchers/core", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.init.maxpat", 
                "bootpath": "/Users/ilyarostovtsev/Documents/Creative Coding/odot/_full_build_trunk/CNMAT-odot/patchers/core"
            }, 
            {
                "patcherrelativepath": "../patchers", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.forward.maxpat", 
                "bootpath": "/Users/ilyarostovtsev/Documents/Creative Coding/odot/_full_build_trunk/CNMAT-odot/patchers"
            }, 
            {
                "patcherrelativepath": "../patchers/io/graphics", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.gl.maxpat", 
                "bootpath": "/Users/ilyarostovtsev/Documents/Creative Coding/odot/_full_build_trunk/CNMAT-odot/patchers/io/graphics"
            }, 
            {
                "patcherrelativepath": "../../../../../../../../Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "thru.maxpat", 
                "bootpath": "/Applications/Max 6.1/patches/m4l-patches/Pluggo for Live resources/patches"
            }, 
            {
                "patcherrelativepath": "../patchers/io/graphics", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.gl.platohelper.maxpat", 
                "bootpath": "/Users/ilyarostovtsev/Documents/Creative Coding/odot/_full_build_trunk/CNMAT-odot/patchers/io/graphics"
            }, 
            {
                "patcherrelativepath": "../patchers/io/graphics", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.gltexthelper.maxpat", 
                "bootpath": "/Users/ilyarostovtsev/Documents/Creative Coding/odot/_full_build_trunk/CNMAT-odot/patchers/io/graphics"
            }, 
            {
                "type": "iLaX", 
                "name": "o.collect.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.union.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.pack.mxo"
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
                "name": "o.context.mxo"
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
                "name": "o.expr.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.timetag.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.schedule.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.when.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "trampoline.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.messageiterate.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.listenumerate.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.expr.codebox.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.display.mxo"
            }
        ]
    }
}