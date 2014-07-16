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
            "revision": 3
        }, 
        "boxes": [
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "<< active , de-activate  with  messages", 
                    "numinlets": 1, 
                    "linecount": 2, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-10", 
                    "patching_rect": [
                        214.0, 
                        144.0, 
                        150.0, 
                        33.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
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
                            "revision": 3
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/total/count : 0,\n/touch/2/state : \"retracted\",\n/touch/2/position : [0.598389, 0.516602],\n/touch/2/size : [0.010498, 0.0212402],\n/touch/1/state : \"retracted\",\n/touch/1/position : [0.401367, 0.499268],\n/touch/1/size : [0.010498, 0.0212402],\n/touch/4/state : \"retracted\",\n/touch/4/position : [0.596191, 0.397217],\n/touch/4/size : [0.010498, 0.0212402],\n/details/ID/vendor : 1386,\n/details/ID/tablet : 791,\n/details/ID/fromOS/tablet : 1,\n/details/serialnumber/pen : 931189726,\n/details/serialnumber/tablet : \"8805614146526\",\n/details/code : 6087,\n/capabilities/code : 6087,\n/capabilities/deviceId : true,\n/capabilities/absX : true,\n/capabilities/absY : true,\n/capabilities/vendor1 : false,\n/capabilities/vendor2 : false,\n/capabilities/vendor3 : false,\n/capabilities/buttons : false,\n/capabilities/tiltX : true,\n/capabilities/tiltY : true,\n/capabilities/absZ : true,\n/capabilities/pressure : true,\n/capabilities/tangential/pressure : true,\n/capabilities/orientation : false,\n/capabilities/rotation : true", 
                                    "numinlets": 2, 
                                    "maxclass": "o.message", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "linecount": 41, 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-4", 
                                    "patching_rect": [
                                        50.0, 
                                        100.0, 
                                        155.0, 
                                        556.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 0, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "inlet", 
                                    "id": "obj-13", 
                                    "patching_rect": [
                                        186.0, 
                                        40.0, 
                                        25.0, 
                                        25.0
                                    ]
                                }
                            }
                        ], 
                        "default_fontface": 0, 
                        "gridonopen": 0, 
                        "rect": [
                            0.0, 
                            0.0, 
                            640.0, 
                            480.0
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
                                        "obj-4", 
                                        1
                                    ]
                                }
                            }
                        ], 
                        "statusbarvisible": 2, 
                        "gridsnaponopen": 0, 
                        "bglocked": 0
                    }, 
                    "saved_object_attributes": {
                        "fontname": "Arial", 
                        "description": "", 
                        "tags": "", 
                        "fontface": 0, 
                        "globalpatchername": "", 
                        "fontsize": 12.0, 
                        "default_fontface": 0, 
                        "default_fontname": "Arial", 
                        "default_fontsize": 12.0, 
                        "digest": ""
                    }, 
                    "text": "p messages out", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-14", 
                    "patching_rect": [
                        20.794376, 
                        299.5, 
                        95.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
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
                            "revision": 3
                        }, 
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial", 
                                    "text": "/total/count : 0,\n/touch/2/state : \"retracted\",\n/touch/2/position : [0.598389, 0.516602],\n/touch/2/size : [0.010498, 0.0212402],\n/touch/1/state : \"retracted\",\n/touch/1/position : [0.401367, 0.499268],\n/touch/1/size : [0.010498, 0.0212402],\n/touch/4/state : \"retracted\",\n/touch/4/position : [0.596191, 0.397217],\n/touch/4/size : [0.010498, 0.0212402],\n/details/ID/vendor : 1386,\n/details/ID/tablet : 791,\n/details/ID/fromOS/tablet : 1,\n/details/serialnumber/pen : 931189726,\n/details/serialnumber/tablet : \"8805614146526\",\n/details/code : 6087,\n/capabilities/code : 6087,\n/capabilities/deviceId : true,\n/capabilities/absX : true,\n/capabilities/absY : true,\n/capabilities/vendor1 : false,\n/capabilities/vendor2 : false,\n/capabilities/vendor3 : false,\n/capabilities/buttons : false,\n/capabilities/tiltX : true,\n/capabilities/tiltY : true,\n/capabilities/absZ : true,\n/capabilities/pressure : true,\n/capabilities/tangential/pressure : true,\n/capabilities/orientation : false,\n/capabilities/rotation : true", 
                                    "numinlets": 2, 
                                    "maxclass": "o.message", 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        ""
                                    ], 
                                    "linecount": 41, 
                                    "fontsize": 12.0, 
                                    "textcolor": [
                                        0.0, 
                                        0.0, 
                                        0.0, 
                                        1.0
                                    ], 
                                    "id": "obj-10", 
                                    "patching_rect": [
                                        50.0, 
                                        100.0, 
                                        150.0, 
                                        556.0
                                    ]
                                }
                            }, 
                            {
                                "box": {
                                    "comment": "", 
                                    "numinlets": 0, 
                                    "numoutlets": 1, 
                                    "outlettype": [
                                        "FullPacket"
                                    ], 
                                    "maxclass": "inlet", 
                                    "id": "obj-11", 
                                    "patching_rect": [
                                        181.0, 
                                        40.0, 
                                        25.0, 
                                        25.0
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
                                        "obj-11", 
                                        0
                                    ], 
                                    "hidden": 0, 
                                    "destination": [
                                        "obj-10", 
                                        1
                                    ]
                                }
                            }
                        ], 
                        "statusbarvisible": 2, 
                        "gridsnaponopen": 0, 
                        "bglocked": 0
                    }, 
                    "saved_object_attributes": {
                        "fontname": "Arial", 
                        "description": "", 
                        "tags": "", 
                        "fontface": 0, 
                        "globalpatchername": "", 
                        "fontsize": 12.0, 
                        "default_fontface": 0, 
                        "default_fontname": "Arial", 
                        "default_fontsize": 12.0, 
                        "digest": ""
                    }, 
                    "text": "p messages out", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-12", 
                    "patching_rect": [
                        179.0, 
                        569.0, 
                        95.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "name": "o.io.tablet.display.maxpat", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "bpatcher", 
                    "id": "obj-2", 
                    "patching_rect": [
                        179.0, 
                        201.0, 
                        562.0, 
                        340.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/pen : \"nopoll\"", 
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
                    "id": "obj-8", 
                    "patching_rect": [
                        105.186981, 
                        170.0, 
                        92.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/pen : \"poll\"", 
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
                        103.789795, 
                        144.0, 
                        77.397186, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/touch : \"nopoll\"", 
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
                    "id": "obj-6", 
                    "patching_rect": [
                        9.794376, 
                        170.0, 
                        92.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/touch : \"poll\"", 
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
                    "id": "obj-3", 
                    "patching_rect": [
                        8.397188, 
                        144.0, 
                        77.397186, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "Relies on s2m.wacom and s2m.wacomtouch objects, provided in this download, possible updates available at maxobjects.com", 
                    "numinlets": 1, 
                    "linecount": 5, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-5", 
                    "patching_rect": [
                        477.607391, 
                        9.115921, 
                        156.0, 
                        74.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "The display:\nIf the pen is sensed by the wacom a red circle appears. The larger the circle, the more pressure applied by the pen.  The red cylinder on the left of the display represents the tilt of the pen. (If the pen tilt display doesn't work, then open its inspector and name it 'tilt.disp'.)\n\nIf touch(s) is sensed yellowish blogs appear.  The sizes of the blobs corresponds to the surface area of the touch. ", 
                    "numinlets": 1, 
                    "linecount": 11, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-7", 
                    "patching_rect": [
                        531.0, 
                        541.0, 
                        277.0, 
                        154.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Menlo Regular", 
                    "text": "o.io.tablet", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 36.0, 
                    "id": "obj-25", 
                    "patching_rect": [
                        19.397188, 
                        20.447449, 
                        453.0, 
                        48.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "OSC-Wrapper for touch and pen Wacom tablets.  ", 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "frgb": 0.0, 
                    "fontsize": 12.0, 
                    "id": "obj-26", 
                    "patching_rect": [
                        19.397188, 
                        80.447449, 
                        397.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "bordercolor": [
                        0.133558, 
                        0.8, 
                        0.0, 
                        1.0
                    ], 
                    "rounded": 70, 
                    "grad1": [
                        0.325952, 
                        0.929412, 
                        0.424782, 
                        1.0
                    ], 
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "bgcolor": [
                        0.629254, 
                        1.0, 
                        0.743511, 
                        1.0
                    ], 
                    "maxclass": "panel", 
                    "border": 5, 
                    "id": "obj-28", 
                    "patching_rect": [
                        5.186983, 
                        9.115921, 
                        424.42041, 
                        118.884079
                    ], 
                    "grad2": [
                        0.696938, 
                        0.721569, 
                        0.680295, 
                        1.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.io.tablet", 
                    "numinlets": 1, 
                    "numoutlets": 1, 
                    "outlettype": [
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        20.794376, 
                        227.0, 
                        63.0, 
                        20.0
                    ]
                }
            }
        ], 
        "default_fontface": 0, 
        "gridonopen": 0, 
        "rect": [
            100.0, 
            100.0, 
            858.0, 
            781.0
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
                        "obj-14", 
                        0
                    ]
                }
            }, 
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
                        "obj-12", 
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
                        "obj-1", 
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
                        "obj-1", 
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
                        "obj-1", 
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
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.tablet.maxpat", 
                "bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.tablet"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.tablet.helper.encode.touch.maxpat", 
                "bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.tablet"
            }, 
            {
                "patcherrelativepath": "./externals/s2m.wacomtouchV1.0", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "recycleFingersIDs.maxpat", 
                "bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.tablet/externals/s2m.wacomtouchV1.0"
            }, 
            {
                "patcherrelativepath": "../../../../../../Max/Packages/maxliB/o.io.qunexus/patchers", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.collectwithtimeout.maxpat", 
                "bootpath": "/Users/gabacheker/Documents/Max/Packages/maxliB/o.io.qunexus/patchers"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.tablet.display.maxpat", 
                "bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.tablet"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JPEG", 
                "name": "wacom-intuos-5-tablet.jpg", 
                "bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.tablet"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.tablet.display.helper.touch.maxpat", 
                "bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.tablet"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.tablet.display.helper.pen.xyz.maxpat", 
                "bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.tablet"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.tablet.display.helper.pen.tilt.maxpat", 
                "bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.tablet"
            }, 
            {
                "patcherrelativepath": "../../../../../../Max/Packages/CNMAT_Externals/odot/abstractions/io/graphics", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.gl.maxpat", 
                "bootpath": "/Users/gabacheker/Documents/Max/Packages/CNMAT_Externals/odot/abstractions/io/graphics"
            }, 
            {
                "patcherrelativepath": "../../../../../../Max/Packages/CNMAT_Externals/odot/abstractions/io/graphics", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.gl.platohelper.maxpat", 
                "bootpath": "/Users/gabacheker/Documents/Max/Packages/CNMAT_Externals/odot/abstractions/io/graphics"
            }, 
            {
                "patcherrelativepath": ".", 
                "implicit": 1, 
                "type": "JSON", 
                "name": "o.io.tablet.display.helper.pen.button.maxpat", 
                "bootpath": "/Users/gabacheker/Documents/CNMAT_Work/CNMAT_GITHUB/CNMAT-odot/abstractions/io/o.io.tablet"
            }, 
            {
                "type": "iLaX", 
                "name": "o.pack.mxo"
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
                "name": "o.message.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.prepend.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.route.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.expr.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "s2m.wacomtouch.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "s2m.wacom.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.select.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.var.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.cond.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.iterate.mxo"
            }, 
            {
                "type": "iLaX", 
                "name": "o.if.mxo"
            }
        ]
    }
}