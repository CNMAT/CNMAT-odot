{
    "patcher": {
        "gridsize": [
            10.0, 
            10.0
        ], 
        "defrect": [
            423.0, 
            44.0, 
            1017.0, 
            645.0
        ], 
        "fileversion": 1, 
        "openinpresentation": 0, 
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-17", 
                        0
                    ], 
                    "hidden": 1, 
                    "destination": [
                        "obj-15", 
                        0
                    ], 
                    "midpoints": []
                }
            }, 
            {
                "patchline": {
                    "source": [
                        "obj-12", 
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
                        "obj-6", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-1", 
                        1
                    ], 
                    "midpoints": [
                        189.5, 
                        154.0, 
                        265.0, 
                        154.0, 
                        265.0, 
                        79.0, 
                        189.5, 
                        79.0
                    ]
                }
            }, 
            {
                "patchline": {
                    "source": [
                        "obj-1", 
                        2
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-6", 
                        0
                    ], 
                    "midpoints": []
                }
            }, 
            {
                "patchline": {
                    "source": [
                        "obj-1", 
                        1
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-9", 
                        1
                    ], 
                    "midpoints": []
                }
            }, 
            {
                "patchline": {
                    "source": [
                        "obj-1", 
                        0
                    ], 
                    "hidden": 0, 
                    "destination": [
                        "obj-7", 
                        1
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
                    "text": "o.filter works similarly to o.apply in that the contents of a bundle in the left inlet will be dispatched out the right outlet seqentially.  Anything that is sent back to the right inlet will end up in the bundle that comes out the left outlet, and those messages that have been filtered out will be in a bundle in the middle outlet.", 
                    "numinlets": 1, 
                    "linecount": 3, 
                    "numoutlets": 0, 
                    "maxclass": "comment", 
                    "fontsize": 12.0, 
                    "id": "obj-13", 
                    "patching_rect": [
                        330.0, 
                        40.0, 
                        593.0, 
                        48.0
                    ]
                }
            }, 
            {
                "box": {
                    "outlettype": [
                        "", 
                        "", 
                        "int"
                    ], 
                    "fontname": "Arial", 
                    "bgovercolor": [
                        0.698039, 
                        0.698039, 
                        0.698039, 
                        0.0
                    ], 
                    "text": "http://cnmat.berkeley.edu/downloads", 
                    "textoveroncolor": [
                        0.0, 
                        0.0, 
                        1.0, 
                        1.0
                    ], 
                    "bgoveroncolor": [
                        0.501961, 
                        0.501961, 
                        0.501961, 
                        0.0
                    ], 
                    "bgoncolor": [
                        0.54902, 
                        0.54902, 
                        0.54902, 
                        0.0
                    ], 
                    "id": "obj-17", 
                    "numoutlets": 3, 
                    "bgcolor": [
                        0.74902, 
                        0.74902, 
                        0.74902, 
                        0.0
                    ], 
                    "maxclass": "textbutton", 
                    "textoncolor": [
                        0.0, 
                        0.0, 
                        1.0, 
                        1.0
                    ], 
                    "fontsize": 12.0, 
                    "numinlets": 1, 
                    "textcolor": [
                        0.0, 
                        0.0, 
                        1.0, 
                        1.0
                    ], 
                    "border": 0, 
                    "textovercolor": [
                        0.0, 
                        0.0, 
                        1.0, 
                        1.0
                    ], 
                    "patching_rect": [
                        30.0, 
                        300.0, 
                        223.0, 
                        21.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": ";\rmax launchbrowser http://cnmat.berkeley.edu/downloads", 
                    "numinlets": 2, 
                    "linecount": 2, 
                    "numoutlets": 1, 
                    "outlettype": [
                        ""
                    ], 
                    "maxclass": "message", 
                    "fontsize": 12.0, 
                    "hidden": 1, 
                    "id": "obj-15", 
                    "patching_rect": [
                        40.0, 
                        310.0, 
                        312.0, 
                        32.0
                    ]
                }
            }, 
            {
                "box": {
                    "numinlets": 1, 
                    "numoutlets": 0, 
                    "maxclass": "fpic", 
                    "embed": 1, 
                    "data": [
                        593, 
                        "", 
                        "IBkSG0fBZn....PCIgDQRA...zF....LHX....vFnS+e....DLmPIQEBHf.B7g.YHB..BfPRDEDU3wY6bEsiCCBCKLc+++xbOwItcqkVHN1oGVZZRSCWZbLgNfUp0Z01HU3K1cfMLqTJC+N8dqOJZ2kjQs0Cy7Sk2qDqaeuV6esBIWssWky6bs9Oy6qO8gH.RtmAn5O2k2Yb0SWSalKVuE2KffyYwrIBm0++DmmJZpDLx.NpFFBG8epo4IVovKR7deHaImPEMTPsfLpYfdDfKZQ31Tv8FIBwoolyvSDsKyLhCOxxcftdVDIngIZnCNLRBXk3QchHOsZQQUFHTQSsZaqzeXlvQeJ+Qdyi7ZEYBY3hlm2brpqwdXc5NMy3GDVEQOrOEQSgZay1GTHASBmlY3CFn3mQBHMQyqa1HqqofKyLxNMEd.4U.qg4kY3wHwrKfqJftn4gaajHfHfybxTzEMD3ouzORHZYq1F6GYQBQKRb2.thaMAYDsUcaG0d0csy.YDMEghtLyDSzxVsMVPJQyLeEtUbJp5xLavlUMaY5n1bndBO5e+xogbsthpsHfJ2KGdpY73hfjiQbGc6tB7lix9jflOH2DQ1XL1hVBwVzRH1hVBwVzRH1hVBws+KoX0mPXzuH.5spcV4um2ScZ0Z8mWdidNQehZP0+QFaNi6gCOVJkTtmAabiLgqEWP7O1P+6uC5G0ITBWi6mxgtnGCEMTCAzPV2bosQfXrpBzVZldtQu6oxF+i3b+CFmP7MQ+TMlEbQ3RG.....IUjSD4pPfIH"
                    ], 
                    "id": "obj-36", 
                    "patching_rect": [
                        40.0, 
                        250.0, 
                        109.0, 
                        48.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "presentation_rect": [
                        213.0, 
                        39.0, 
                        0.0, 
                        0.0
                    ], 
                    "text": "/foo : [34, \"/bar\", 20.4]", 
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
                    "id": "obj-12", 
                    "patching_rect": [
                        140.0, 
                        30.0, 
                        99.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/bar : 20.4", 
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
                        80.0, 
                        200.0, 
                        99.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "/foo : 34", 
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
                    "id": "obj-7", 
                    "patching_rect": [
                        60.0, 
                        170.0, 
                        99.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.filter", 
                    "numinlets": 2, 
                    "numoutlets": 3, 
                    "outlettype": [
                        "FullPacket", 
                        "FullPacket", 
                        ""
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-1", 
                    "patching_rect": [
                        140.0, 
                        90.0, 
                        59.0, 
                        20.0
                    ]
                }
            }, 
            {
                "box": {
                    "fontname": "Arial", 
                    "text": "o.spew /foo", 
                    "numinlets": 1, 
                    "numoutlets": 2, 
                    "outlettype": [
                        "", 
                        "FullPacket"
                    ], 
                    "maxclass": "newobj", 
                    "fontsize": 12.0, 
                    "id": "obj-6", 
                    "patching_rect": [
                        180.0, 
                        120.0, 
                        72.0, 
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
            423.0, 
            44.0, 
            1017.0, 
            645.0
        ]
    }
}