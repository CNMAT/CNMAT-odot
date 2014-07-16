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
            10.0, 
            10.0
        ], 
        "openinpresentation": 1, 
        "enablehscroll": 1, 
        "description": "", 
        "tags": "", 
        "enablevscroll": 1, 
        "appversion": {
            "major": 6, 
            "architecture": "x86", 
            "minor": 1, 
            "revision": 4
        }, 
        "boxes": [
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/Instruction : \"Push on 4 corners of any pad for corresponding data\",\n/Manufacturer : \"Keith McMillen Instruments\",\n/Product : \"SoftStep\"", 
                    "numinlets": 2, 
                    "maxclass": "o.message", 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "linecount": 3, 
                    "fontsize": 12.0, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        0.0, 
                        1.0
                    ], 
                    "id": "obj-2", 
                    "patching_rect": [
                        520.0, 
                        540.0, 
                        363.0, 
                        47.0
                    ]
                }
            }, 
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
                    "fontsize": 12.0, 
                    "id": "obj-15", 
                    "patching_rect": [
                        520.0, 
                        507.0, 
                        60.0, 
                        20.0
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
                    "id": "obj-14", 
                    "patching_rect": [
                        100.0, 
                        710.0, 
                        50.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "presentation_rect": [
                        394.0, 
                        85.0, 
                        70.0, 
                        60.0
                    ], 
                    "name": "c.softstep.paddisp.maxpat", 
                    "numinlets": 1, 
                    "args": [
                        "/5"
                    ], 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "bpatcher", 
                    "presentation": 1, 
                    "id": "obj-8", 
                    "patching_rect": [
                        490.0, 
                        360.0, 
                        70.0, 
                        60.0
                    ]
                }
            }, 
            {
                "box": {
                    "presentation_rect": [
                        297.210999, 
                        85.0, 
                        70.0, 
                        60.0
                    ], 
                    "name": "c.softstep.paddisp.maxpat", 
                    "numinlets": 1, 
                    "args": [
                        "/4"
                    ], 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "bpatcher", 
                    "presentation": 1, 
                    "id": "obj-9", 
                    "patching_rect": [
                        410.0, 
                        360.0, 
                        70.0, 
                        60.0
                    ]
                }
            }, 
            {
                "box": {
                    "presentation_rect": [
                        201.0, 
                        85.0, 
                        70.0, 
                        60.0
                    ], 
                    "name": "c.softstep.paddisp.maxpat", 
                    "numinlets": 1, 
                    "args": [
                        "/3"
                    ], 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "bpatcher", 
                    "presentation": 1, 
                    "id": "obj-10", 
                    "patching_rect": [
                        330.0, 
                        360.0, 
                        70.0, 
                        60.0
                    ]
                }
            }, 
            {
                "box": {
                    "presentation_rect": [
                        105.0, 
                        85.0, 
                        70.0, 
                        60.0
                    ], 
                    "name": "c.softstep.paddisp.maxpat", 
                    "numinlets": 1, 
                    "args": [
                        "/2"
                    ], 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "bpatcher", 
                    "presentation": 1, 
                    "id": "obj-11", 
                    "patching_rect": [
                        250.0, 
                        360.0, 
                        70.0, 
                        60.0
                    ]
                }
            }, 
            {
                "box": {
                    "presentation_rect": [
                        9.0, 
                        85.0, 
                        70.0, 
                        60.0
                    ], 
                    "name": "c.softstep.paddisp.maxpat", 
                    "numinlets": 1, 
                    "args": [
                        "/1"
                    ], 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "bpatcher", 
                    "presentation": 1, 
                    "id": "obj-13", 
                    "patching_rect": [
                        170.0, 
                        360.0, 
                        70.0, 
                        60.0
                    ]
                }
            }, 
            {
                "box": {
                    "presentation_rect": [
                        394.0, 
                        10.0, 
                        70.0, 
                        60.0
                    ], 
                    "name": "c.softstep.paddisp.maxpat", 
                    "numinlets": 1, 
                    "args": [
                        "/10"
                    ], 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "bpatcher", 
                    "presentation": 1, 
                    "id": "obj-7", 
                    "patching_rect": [
                        490.0, 
                        270.0, 
                        70.0, 
                        60.0
                    ]
                }
            }, 
            {
                "box": {
                    "presentation_rect": [
                        299.210999, 
                        10.0, 
                        70.0, 
                        60.0
                    ], 
                    "name": "c.softstep.paddisp.maxpat", 
                    "numinlets": 1, 
                    "args": [
                        "/9"
                    ], 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "bpatcher", 
                    "presentation": 1, 
                    "id": "obj-6", 
                    "patching_rect": [
                        410.0, 
                        270.0, 
                        70.0, 
                        60.0
                    ]
                }
            }, 
            {
                "box": {
                    "presentation_rect": [
                        201.0, 
                        10.0, 
                        70.0, 
                        60.0
                    ], 
                    "name": "c.softstep.paddisp.maxpat", 
                    "numinlets": 1, 
                    "args": [
                        "/8"
                    ], 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "bpatcher", 
                    "presentation": 1, 
                    "id": "obj-5", 
                    "patching_rect": [
                        330.0, 
                        270.0, 
                        70.0, 
                        60.0
                    ]
                }
            }, 
            {
                "box": {
                    "presentation_rect": [
                        105.0, 
                        10.0, 
                        70.0, 
                        60.0
                    ], 
                    "name": "c.softstep.paddisp.maxpat", 
                    "numinlets": 1, 
                    "args": [
                        "/7"
                    ], 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "bpatcher", 
                    "presentation": 1, 
                    "id": "obj-4", 
                    "patching_rect": [
                        250.0, 
                        270.0, 
                        70.0, 
                        60.0
                    ]
                }
            }, 
            {
                "box": {
                    "presentation_rect": [
                        10.0, 
                        10.0, 
                        70.0, 
                        60.0
                    ], 
                    "name": "c.softstep.paddisp.maxpat", 
                    "numinlets": 1, 
                    "args": [
                        "/6"
                    ], 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "bpatcher", 
                    "presentation": 1, 
                    "id": "obj-3", 
                    "patching_rect": [
                        170.0, 
                        270.0, 
                        70.0, 
                        60.0
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
                    "id": "obj-31", 
                    "patching_rect": [
                        70.0, 
                        60.0, 
                        25.0, 
                        25.0
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
                        100.0, 
                        750.0, 
                        25.0, 
                        25.0
                    ]
                }
            }, 
            {
                "box": {
                    "presentation_rect": [
                        -2.0, 
                        2.0, 
                        656.421997, 
                        149.686188
                    ], 
                    "numinlets": 1, 
                    "pic": "keithmcmillen_softstep.png", 
                    "autofit": 1, 
                    "numoutlets": 0, 
                    "maxclass": "fpic", 
                    "presentation": 1, 
                    "id": "obj-1", 
                    "patching_rect": [
                        280.0, 
                        640.0, 
                        656.421997, 
                        149.686188
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            299.0, 
            212.0, 
            1381.0, 
            850.0
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
                        "obj-14", 
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
                        "obj-14", 
                        0
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
                        "obj-14", 
                        0
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
                        "obj-27", 
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
                        "obj-14", 
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
                        "obj-14", 
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
                        "obj-10", 
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
                        "obj-11", 
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
                        "obj-13", 
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
                        "obj-3", 
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
                        "obj-4", 
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
                        "obj-5", 
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
                        "obj-6", 
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
                        "obj-7", 
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
                        "obj-8", 
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
                        "obj-9", 
                        0
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
                        "obj-14", 
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
                        "obj-14", 
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
                        "obj-14", 
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
                        "obj-14", 
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
                        "obj-14", 
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
                        "obj-14", 
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
                "type": "PNG ", 
                "name": "keithmcmillen_softstep.png", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io/o.io.softstep"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.softstep.paddisp.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io/o.io.softstep"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.softstep.rbfiw.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io/o.io.softstep"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "c.softstep.pad.maxpat", 
                "bootpath": "/Users/jml/Documents/materials/programming/max_files/5_berkeley/projects/cnmat/repositories/git/CNMAT-odot/abstractions/io/o.io.softstep"
            }, 
            {
                "type": "iLaX", 
                "name": "rbfi.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.prepend.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.var.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.message.mxo"
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
                "name": "o.union.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.select.mxo"
            }
        ]
    }
}