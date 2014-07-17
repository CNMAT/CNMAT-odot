{
	"patcher": {
		"fileversion": 1, 
		"imprint": 0, 
		"boxanimatetime": 200, 
		"devicewidth": 0.0, 
		"default_fontsize": 12.0, 
		"toolbarvisible": 1, 
		"default_fontname": "Helvetica Neue", 
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
					"fontname": "Helvetica Neue", 
					"text": "print out the initial /cell", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-16", 
					"patching_rect": [
						449.0, 
						234.5, 
						132.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"bang"
					], 
					"maxclass": "button", 
					"id": "obj-15", 
					"patching_rect": [
						74.0, 
						105.0, 
						20.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/cell = list( nfill( 30, 0 ), 1, nfill( 30, 0) ),\n/ruleset = list( 0, 1, 0, 1, 1, 0, 0, 0 ),\n/max_generations = 255,", 
					"numinlets": 1, 
					"maxclass": "o.expr.codebox", 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"linecount": 3, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-4", 
					"patching_rect": [
						74.0, 
						150.0, 
						321.0, 
						61.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/cell = /new, \n/currentPoint = 1, \n/generation++,", 
					"numinlets": 1, 
					"maxclass": "o.expr.codebox", 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"linecount": 3, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-9", 
					"patching_rect": [
						74.0, 
						564.0, 
						113.0, 
						61.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/triad = /cell[[ aseq( /currentPoint - 1, /currentPoint + 1 ) ]],\n/index = /triad[[ 2 ]] + ( 2 * /triad[[ 1 ]] ) + ( 4 * /triad[[ 0 ]] ),\nassign_to_index( /new, /currentPoint, /ruleset[[ /index ]] ),\n\n/currentPoint += 1,", 
					"numinlets": 1, 
					"maxclass": "o.expr.codebox", 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"linecount": 5, 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-8", 
					"patching_rect": [
						74.0, 
						384.5, 
						326.0, 
						89.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/new = nfill( length( /cell ), 0 ), /generation = 0, /currentPoint = 1,", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "o.expr.codebox", 
					"fontsize": 12.0, 
					"textcolor": [
						0.0, 
						0.0, 
						0.0, 
						1.0
					], 
					"id": "obj-7", 
					"patching_rect": [
						74.0, 
						315.5, 
						353.0, 
						33.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "Cellular Automata in O.", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 24.0, 
					"fontface": 1, 
					"id": "obj-6", 
					"patching_rect": [
						45.0, 
						30.0, 
						275.0, 
						35.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "See your Max Window", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"bgcolor": [
						0.8, 
						0.8, 
						0.8, 
						1.0
					], 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"fontface": 3, 
					"textcolor": [
						0.0, 
						0.501961, 
						0.501961, 
						1.0
					], 
					"id": "obj-3", 
					"patching_rect": [
						183.0, 
						65.0, 
						137.0, 
						21.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "as long as the row is not all zeros, and we haven't exceeded max_generations... we loop back to top. (otherwise, do nothing...)", 
					"numinlets": 1, 
					"linecount": 2, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-64", 
					"patching_rect": [
						449.0, 
						691.5, 
						450.0, 
						34.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": ".../cell becomes /new, \n   reset /currentPoint, \n   increment /generation", 
					"numinlets": 1, 
					"linecount": 3, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-63", 
					"patching_rect": [
						449.0, 
						570.5, 
						138.0, 
						48.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "if currentPoint reaches the end of the /cell...", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-62", 
					"patching_rect": [
						449.0, 
						504.5, 
						245.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "look at three consecutive elements of /cell\ntreat those elements as a binary number\ngrab the /ruleset at the index computed in previous step, and put it into /new\n\nincrement the /currentPoint", 
					"numinlets": 1, 
					"linecount": 5, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-58", 
					"patching_rect": [
						449.0, 
						391.0, 
						426.0, 
						76.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "an empty /new is instantiated,\nadditional variables are created...", 
					"numinlets": 1, 
					"linecount": 2, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-57", 
					"patching_rect": [
						449.0, 
						315.5, 
						188.0, 
						34.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "/cell defines the starting point\n/ruleset defines the rule", 
					"numinlets": 1, 
					"linecount": 2, 
					"numoutlets": 0, 
					"maxclass": "comment", 
					"frgb": 0.0, 
					"fontsize": 12.0, 
					"id": "obj-54", 
					"patching_rect": [
						449.0, 
						163.5, 
						173.0, 
						34.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "r toPrint", 
					"numinlets": 0, 
					"numoutlets": 1, 
					"outlettype": [
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-52", 
					"patching_rect": [
						764.0, 
						210.0, 
						53.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "s toPrint", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-51", 
					"patching_rect": [
						74.0, 
						660.0, 
						55.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "s toPrint", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-50", 
					"patching_rect": [
						104.0, 
						270.0, 
						55.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "t l l", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						""
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-49", 
					"patching_rect": [
						74.0, 
						234.5, 
						49.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.if ( max( /cell ) != 0 ) && ( /generation < /max_generations )", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-48", 
					"patching_rect": [
						334.0, 
						660.0, 
						330.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "print", 
					"numinlets": 1, 
					"numoutlets": 0, 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-37", 
					"patching_rect": [
						764.0, 
						270.0, 
						35.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.route /cell", 
					"numinlets": 2, 
					"numoutlets": 2, 
					"outlettype": [
						"", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-36", 
					"patching_rect": [
						764.0, 
						240.0, 
						74.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.if ( /currentPoint == ( length( /cell ) - 1 ) )\\;", 
					"numinlets": 1, 
					"numoutlets": 2, 
					"outlettype": [
						"FullPacket", 
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-31", 
					"patching_rect": [
						74.0, 
						504.5, 
						279.0, 
						20.0
					]
				}
			}, 
			{
				"box": {
					"fontname": "Helvetica Neue", 
					"text": "o.forward", 
					"numinlets": 1, 
					"numoutlets": 1, 
					"outlettype": [
						"FullPacket"
					], 
					"maxclass": "newobj", 
					"fontsize": 12.0, 
					"id": "obj-28", 
					"patching_rect": [
						334.0, 
						705.0, 
						62.0, 
						20.0
					]
				}
			}
		], 
		"default_fontface": 1, 
		"gridonopen": 0, 
		"rect": [
			59.0, 
			44.0, 
			948.0, 
			789.0
		], 
		"lines": [
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-15", 
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
						"obj-28", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-8", 
						0
					], 
					"midpoints": [
						343.5, 
						748.5, 
						51.0, 
						748.5, 
						51.0, 
						371.5, 
						83.5, 
						371.5
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-31", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-48", 
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
						"obj-36", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-37", 
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
						"obj-49", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-48", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-28", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-49", 
						1
					], 
					"hidden": 0, 
					"destination": [
						"obj-50", 
						0
					]
				}
			}, 
			{
				"patchline": {
					"disabled": 0, 
					"source": [
						"obj-49", 
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
						"obj-52", 
						0
					], 
					"hidden": 0, 
					"destination": [
						"obj-36", 
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
						"obj-8", 
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
						"obj-31", 
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
						"obj-28", 
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
						"obj-51", 
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
				"patcherrelativepath": "../../odot/_full_build_trunk/CNMAT-odot/patchers", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.forward.maxpat", 
				"bootpath": "/Users/ilyarostovtsev/Documents/Creative Coding/odot/_full_build_trunk/CNMAT-odot/patchers"
			}, 
			{
				"patcherrelativepath": "../../odot/_full_build_trunk/CNMAT-odot/patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.in.maxpat", 
				"bootpath": "/Users/ilyarostovtsev/Documents/Creative Coding/odot/_full_build_trunk/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../../odot/_full_build_trunk/CNMAT-odot/patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.port.maxpat", 
				"bootpath": "/Users/ilyarostovtsev/Documents/Creative Coding/odot/_full_build_trunk/CNMAT-odot/patchers/core"
			}, 
			{
				"patcherrelativepath": "../../odot/_full_build_trunk/CNMAT-odot/patchers/aspect", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.aspect.joinpoint.maxpat", 
				"bootpath": "/Users/ilyarostovtsev/Documents/Creative Coding/odot/_full_build_trunk/CNMAT-odot/patchers/aspect"
			}, 
			{
				"patcherrelativepath": "../../odot/_full_build_trunk/CNMAT-odot/patchers/core", 
				"implicit": 1, 
				"type": "JSON", 
				"name": "o.out.maxpat", 
				"bootpath": "/Users/ilyarostovtsev/Documents/Creative Coding/odot/_full_build_trunk/CNMAT-odot/patchers/core"
			}, 
			{
				"type": "iLaX", 
				"name": "trampoline.mxo"
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
				"name": "o.expr.codebox.mxo"
			}
		]
	}
}