{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 9,
			"architecture" : "x64"
		}
,
		"rect" : [ 60.0, 44.0, 1380.0, 615.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 11.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 845.0, 438.0, 410.0, 19.0 ],
					"presentation_rect" : [ 739.0, 465.0, 0.0, 0.0 ],
					"text" : "ideally this could be played in real time, have to think about how to do that exactly."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-34",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 941.0, 307.0, 178.0, 31.0 ],
					"presentation_rect" : [ 939.0, 307.0, 0.0, 0.0 ],
					"text" : "/map/fns = getaddresses()",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 928.0, 398.0, 313.0, 19.0 ],
					"text" : "generalize this syntax to include what to pass in as arguments"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-14",
					"linecount" : 6,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 692.0, 202.0, 716.0, 85.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 99, 97, 108, 101, 47, 116, 105, 109, 101, 0, 44, 105, 0, 0, 0, 0, 0, 2, 0, 0, 0, 24, 47, 115, 99, 97, 108, 101, 47, 102, 114, 101, 113, 0, 44, 105, 105, 0, 0, 0, 0, 100, 0, 0, 39, 16, 0, 0, 0, 96, 47, 109, 97, 112, 47, 120, 49, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 120, 49, 44, 105, 93, 44, 32, 97, 115, 115, 105, 103, 110, 40, 113, 117, 111, 116, 101, 40, 47, 95, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 116, 105, 109, 101, 47, 115, 116, 97, 114, 116, 41, 44, 32, 47, 110, 111, 119, 32, 43, 32, 120, 49, 32, 42, 32, 47, 115, 99, 97, 108, 101, 47, 116, 105, 109, 101, 41, 41, 0, 0, 0, 0, 0, 0, 0, 92, 47, 109, 97, 112, 47, 120, 50, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 120, 50, 44, 105, 93, 44, 32, 97, 115, 115, 105, 103, 110, 40, 113, 117, 111, 116, 101, 40, 47, 95, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 116, 105, 109, 101, 47, 101, 110, 100, 41, 44, 32, 47, 110, 111, 119, 32, 43, 32, 120, 50, 32, 42, 32, 47, 115, 99, 97, 108, 101, 47, 116, 105, 109, 101, 41, 41, 0, 0, 0, 0, 0, -128, 47, 109, 97, 112, 47, 121, 49, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 121, 49, 44, 105, 93, 44, 32, 97, 115, 115, 105, 103, 110, 40, 113, 117, 111, 116, 101, 40, 47, 95, 47, 41, 43, 105, 43, 113, 117, 111, 116, 101, 40, 47, 102, 114, 101, 113, 41, 44, 32, 121, 49, 32, 42, 32, 40, 47, 115, 99, 97, 108, 101, 47, 102, 114, 101, 113, 91, 91, 49, 93, 93, 32, 45, 32, 47, 115, 99, 97, 108, 101, 47, 102, 114, 101, 113, 91, 91, 48, 93, 93, 41, 32, 43, 32, 47, 115, 99, 97, 108, 101, 47, 102, 114, 101, 113, 91, 91, 48, 93, 93, 41, 41, 0, 0, 0, 0 ],
					"saved_bundle_length" : 396,
					"text" : "/scale/time : 2,\n/scale/freq : [100, 10000],\n/map/x1 : \"lambda([x1,i], assign(quote(/_/)+i+quote(/time/start), /now + x1 * /scale/time))\",\n/map/x2 : \"lambda([x2,i], assign(quote(/_/)+i+quote(/time/end), /now + x2 * /scale/time))\",\n/map/y1 : \"lambda([y1,i], assign(quote(/_/)+i+quote(/freq), y1 * (/scale/freq[[1]] - /scale/freq[[0]]) + /scale/freq[[0]]))\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 606.0, 438.0, 100.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 979.0, 542.0, 72.0, 19.0 ],
					"text" : "peek~ on-off"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 928.0, 501.0, 109.0, 19.0 ],
					"text" : "buffer~ on-off 20000"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-32",
					"linecount" : 627,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 203.0, 490.0, 323.0, 7830.0 ],
					"text" : "/0/time/start : 2014-10-24T07:15:01.887693Z,\n/0/time/end : 2014-10-24T07:15:01.918128Z,\n/0/freq : 3437.38,\n/1/time/start : 2014-10-24T07:15:01.896216Z,\n/1/time/end : 2014-10-24T07:15:01.925363Z,\n/1/freq : 3457.93,\n/2/time/start : 2014-10-24T07:15:01.904741Z,\n/2/time/end : 2014-10-24T07:15:01.932603Z,\n/2/freq : 3478.57,\n/3/time/start : 2014-10-24T07:15:01.913270Z,\n/3/time/end : 2014-10-24T07:15:01.939841Z,\n/3/freq : 3499.12,\n/4/time/start : 2014-10-24T07:15:01.921798Z,\n/4/time/end : 2014-10-24T07:15:01.947079Z,\n/4/freq : 3519.67,\n/5/time/start : 2014-10-24T07:15:01.930324Z,\n/5/time/end : 2014-10-24T07:15:01.954319Z,\n/5/freq : 3540.22,\n/6/time/start : 2014-10-24T07:15:01.938849Z,\n/6/time/end : 2014-10-24T07:15:01.961557Z,\n/6/freq : 3560.77,\n/7/time/start : 2014-10-24T07:15:01.947378Z,\n/7/time/end : 2014-10-24T07:15:01.968798Z,\n/7/freq : 3581.32,\n/8/time/start : 2014-10-24T07:15:01.955903Z,\n/8/time/end : 2014-10-24T07:15:01.976036Z,\n/8/freq : 3601.87,\n/9/time/start : 2014-10-24T07:15:01.964431Z,\n/9/time/end : 2014-10-24T07:15:01.983276Z,\n/9/freq : 3622.51,\n/10/time/start : 2014-10-24T07:15:01.972957Z,\n/10/time/end : 2014-10-24T07:15:01.990514Z,\n/10/freq : 3643.06,\n/11/time/start : 2014-10-24T07:15:01.981483Z,\n/11/time/end : 2014-10-24T07:15:01.997752Z,\n/11/freq : 3663.61,\n/12/time/start : 2014-10-24T07:15:01.990008Z,\n/12/time/end : 2014-10-24T07:15:02.004992Z,\n/12/freq : 3684.25,\n/13/time/start : 2014-10-24T07:15:01.998537Z,\n/13/time/end : 2014-10-24T07:15:02.012230Z,\n/13/freq : 3704.71,\n/14/time/start : 2014-10-24T07:15:02.007062Z,\n/14/time/end : 2014-10-24T07:15:02.019468Z,\n/14/freq : 3725.26,\n/15/time/start : 2014-10-24T07:15:02.015590Z,\n/15/time/end : 2014-10-24T07:15:02.026705Z,\n/15/freq : 3745.81,\n/16/time/start : 2014-10-24T07:15:02.024116Z,\n/16/time/end : 2014-10-24T07:15:02.033946Z,\n/16/freq : 3766.45,\n/17/time/start : 2014-10-24T07:15:02.032644Z,\n/17/time/end : 2014-10-24T07:15:02.041184Z,\n/17/freq : 3787,\n/18/time/start : 2014-10-24T07:15:02.041170Z,\n/18/time/end : 2014-10-24T07:15:02.048421Z,\n/18/freq : 3807.55,\n/19/time/start : 2014-10-24T07:15:02.049698Z,\n/19/time/end : 2014-10-24T07:15:02.055662Z,\n/19/freq : 3828.19,\n/20/time/start : 2014-10-24T07:15:02.058221Z,\n/20/time/end : 2014-10-24T07:15:02.062900Z,\n/20/freq : 3848.65,\n/21/time/start : 2014-10-24T07:15:02.066749Z,\n/21/time/end : 2014-10-24T07:15:02.070138Z,\n/21/freq : 3869.2,\n/22/time/start : 2014-10-24T07:15:02.075275Z,\n/22/time/end : 2014-10-24T07:15:02.077378Z,\n/22/freq : 3889.75,\n/23/time/start : 2014-10-24T07:15:02.083803Z,\n/23/time/end : 2014-10-24T07:15:02.084616Z,\n/23/freq : 3910.39,\n/24/time/start : 2014-10-24T07:15:02.092329Z,\n/24/time/end : 2014-10-24T07:15:02.091854Z,\n/24/freq : 3930.94,\n/25/time/start : 2014-10-24T07:15:02.100857Z,\n/25/time/end : 2014-10-24T07:15:02.099094Z,\n/25/freq : 3951.49,\n/26/time/start : 2014-10-24T07:15:02.109383Z,\n/26/time/end : 2014-10-24T07:15:02.106332Z,\n/26/freq : 3972.13,\n/27/time/start : 2014-10-24T07:15:02.117911Z,\n/27/time/end : 2014-10-24T07:15:02.113573Z,\n/27/freq : 3992.59,\n/28/time/start : 2014-10-24T07:15:02.126436Z,\n/28/time/end : 2014-10-24T07:15:02.120811Z,\n/28/freq : 4013.14,\n/29/time/start : 2014-10-24T07:15:02.134962Z,\n/29/time/end : 2014-10-24T07:15:02.128048Z,\n/29/freq : 4033.69,\n/30/time/start : 2014-10-24T07:15:02.143490Z,\n/30/time/end : 2014-10-24T07:15:02.135289Z,\n/30/freq : 4054.33,\n/31/time/start : 2014-10-24T07:15:02.152016Z,\n/31/time/end : 2014-10-24T07:15:02.142527Z,\n/31/freq : 4074.88,\n/32/time/start : 2014-10-24T07:15:02.160542Z,\n/32/time/end : 2014-10-24T07:15:02.149765Z,\n/32/freq : 4095.52,\n/33/time/start : 2014-10-24T07:15:02.169070Z,\n/33/time/end : 2014-10-24T07:15:02.157005Z,\n/33/freq : 4116.07,\n/34/time/start : 2014-10-24T07:15:02.177595Z,\n/34/time/end : 2014-10-24T07:15:02.164243Z,\n/34/freq : 4136.53,\n/35/time/start : 2014-10-24T07:15:02.186123Z,\n/35/time/end : 2014-10-24T07:15:02.171483Z,\n/35/freq : 4157.17,\n/36/time/start : 2014-10-24T07:15:02.194649Z,\n/36/time/end : 2014-10-24T07:15:02.178721Z,\n/36/freq : 4177.72,\n/37/time/start : 2014-10-24T07:15:02.203175Z,\n/37/time/end : 2014-10-24T07:15:02.185959Z,\n/37/freq : 4198.27,\n/38/time/start : 2014-10-24T07:15:02.211703Z,\n/38/time/end : 2014-10-24T07:15:02.193197Z,\n/38/freq : 4218.82,\n/39/time/start : 2014-10-24T07:15:02.220229Z,\n/39/time/end : 2014-10-24T07:15:02.200437Z,\n/39/freq : 4239.37,\n/40/time/start : 2014-10-24T07:15:02.228754Z,\n/40/time/end : 2014-10-24T07:15:02.207675Z,\n/40/freq : 4260.01,\n/41/time/start : 2014-10-24T07:15:02.237282Z,\n/41/time/end : 2014-10-24T07:15:02.214915Z,\n/41/freq : 4280.47,\n/42/time/start : 2014-10-24T07:15:02.245808Z,\n/42/time/end : 2014-10-24T07:15:02.222153Z,\n/42/freq : 4301.02,\n/43/time/start : 2014-10-24T07:15:02.254333Z,\n/43/time/end : 2014-10-24T07:15:02.229394Z,\n/43/freq : 4321.66,\n/44/time/start : 2014-10-24T07:15:02.262862Z,\n/44/time/end : 2014-10-24T07:15:02.236631Z,\n/44/freq : 4342.21,\n/45/time/start : 2014-10-24T07:15:02.271388Z,\n/45/time/end : 2014-10-24T07:15:02.243869Z,\n/45/freq : 4362.76,\n/46/time/start : 2014-10-24T07:15:02.279916Z,\n/46/time/end : 2014-10-24T07:15:02.251107Z,\n/46/freq : 4383.4,\n/47/time/start : 2014-10-24T07:15:02.288441Z,\n/47/time/end : 2014-10-24T07:15:02.258345Z,\n/47/freq : 4403.95,\n/48/time/start : 2014-10-24T07:15:02.296969Z,\n/48/time/end : 2014-10-24T07:15:02.265585Z,\n/48/freq : 4424.5,\n/49/time/start : 2014-10-24T07:15:02.305495Z,\n/49/time/end : 2014-10-24T07:15:02.272826Z,\n/49/freq : 4444.96,\n/50/time/start : 2014-10-24T07:15:02.314021Z,\n/50/time/end : 2014-10-24T07:15:02.280061Z,\n/50/freq : 4465.51,\n/51/time/start : 2014-10-24T07:15:02.322546Z,\n/51/time/end : 2014-10-24T07:15:02.287302Z,\n/51/freq : 4486.15,\n/52/time/start : 2014-10-24T07:15:02.331075Z,\n/52/time/end : 2014-10-24T07:15:02.294539Z,\n/52/freq : 4506.7,\n/53/time/start : 2014-10-24T07:15:02.339603Z,\n/53/time/end : 2014-10-24T07:15:02.301780Z,\n/53/freq : 4527.34,\n/54/time/start : 2014-10-24T07:15:02.348128Z,\n/54/time/end : 2014-10-24T07:15:02.309018Z,\n/54/freq : 4547.8,\n/55/time/start : 2014-10-24T07:15:02.356654Z,\n/55/time/end : 2014-10-24T07:15:02.316256Z,\n/55/freq : 4568.35,\n/56/time/start : 2014-10-24T07:15:02.365182Z,\n/56/time/end : 2014-10-24T07:15:02.323496Z,\n/56/freq : 4588.99,\n/57/time/start : 2014-10-24T07:15:02.373708Z,\n/57/time/end : 2014-10-24T07:15:02.330734Z,\n/57/freq : 4609.54,\n/58/time/start : 2014-10-24T07:15:02.382234Z,\n/58/time/end : 2014-10-24T07:15:02.337972Z,\n/58/freq : 4630.09,\n/59/time/start : 2014-10-24T07:15:02.390759Z,\n/59/time/end : 2014-10-24T07:15:02.345212Z,\n/59/freq : 4650.64,\n/60/time/start : 2014-10-24T07:15:02.399287Z,\n/60/time/end : 2014-10-24T07:15:02.352450Z,\n/60/freq : 4671.28,\n/61/time/start : 2014-10-24T07:15:02.407813Z,\n/61/time/end : 2014-10-24T07:15:02.359688Z,\n/61/freq : 4691.83,\n/62/time/start : 2014-10-24T07:15:02.416341Z,\n/62/time/end : 2014-10-24T07:15:02.366928Z,\n/62/freq : 4712.29,\n/63/time/start : 2014-10-24T07:15:02.424867Z,\n/63/time/end : 2014-10-24T07:15:02.374166Z,\n/63/freq : 4732.93,\n/64/time/start : 2014-10-24T07:15:02.433395Z,\n/64/time/end : 2014-10-24T07:15:02.381407Z,\n/64/freq : 4753.48,\n/65/time/start : 2014-10-24T07:15:02.441921Z,\n/65/time/end : 2014-10-24T07:15:02.388644Z,\n/65/freq : 4774.03,\n/66/time/start : 2014-10-24T07:15:02.450446Z,\n/66/time/end : 2014-10-24T07:15:02.395882Z,\n/66/freq : 4794.58,\n/67/time/start : 2014-10-24T07:15:02.458972Z,\n/67/time/end : 2014-10-24T07:15:02.403123Z,\n/67/freq : 4815.22,\n/68/time/start : 2014-10-24T07:15:02.467500Z,\n/68/time/end : 2014-10-24T07:15:02.410360Z,\n/68/freq : 4835.77,\n/69/time/start : 2014-10-24T07:15:02.476026Z,\n/69/time/end : 2014-10-24T07:15:02.417598Z,\n/69/freq : 4856.32,\n/70/time/start : 2014-10-24T07:15:02.484554Z,\n/70/time/end : 2014-10-24T07:15:02.424836Z,\n/70/freq : 4876.87,\n/71/time/start : 2014-10-24T07:15:02.493080Z,\n/71/time/end : 2014-10-24T07:15:02.432074Z,\n/71/freq : 4897.42,\n/72/time/start : 2014-10-24T07:15:02.501608Z,\n/72/time/end : 2014-10-24T07:15:02.439314Z,\n/72/freq : 4917.97,\n/73/time/start : 2014-10-24T07:15:02.510133Z,\n/73/time/end : 2014-10-24T07:15:02.446552Z,\n/73/freq : 4938.52,\n/74/time/start : 2014-10-24T07:15:02.518659Z,\n/74/time/end : 2014-10-24T07:15:02.453793Z,\n/74/freq : 4959.16,\n/75/time/start : 2014-10-24T07:15:02.527184Z,\n/75/time/end : 2014-10-24T07:15:02.461030Z,\n/75/freq : 4979.71,\n/76/time/start : 2014-10-24T07:15:02.535713Z,\n/76/time/end : 2014-10-24T07:15:02.468268Z,\n/76/freq : 5000.26,\n/77/time/start : 2014-10-24T07:15:02.544239Z,\n/77/time/end : 2014-10-24T07:15:02.475509Z,\n/77/freq : 5020.81,\n/78/time/start : 2014-10-24T07:15:02.552764Z,\n/78/time/end : 2014-10-24T07:15:02.482747Z,\n/78/freq : 5041.36,\n/79/time/start : 2014-10-24T07:15:02.561292Z,\n/79/time/end : 2014-10-24T07:15:02.489987Z,\n/79/freq : 5062,\n/80/time/start : 2014-10-24T07:15:02.569820Z,\n/80/time/end : 2014-10-24T07:15:02.497225Z,\n/80/freq : 5082.55,\n/81/time/start : 2014-10-24T07:15:02.578346Z,\n/81/time/end : 2014-10-24T07:15:02.504463Z,\n/81/freq : 5103.1,\n/82/time/start : 2014-10-24T07:15:02.586872Z,\n/82/time/end : 2014-10-24T07:15:02.511701Z,\n/82/freq : 5123.56,\n/83/time/start : 2014-10-24T07:15:02.595397Z,\n/83/time/end : 2014-10-24T07:15:02.518941Z,\n/83/freq : 5144.11,\n/84/time/start : 2014-10-24T07:15:02.603926Z,\n/84/time/end : 2014-10-24T07:15:02.526179Z,\n/84/freq : 5164.75,\n/85/time/start : 2014-10-24T07:15:02.612451Z,\n/85/time/end : 2014-10-24T07:15:02.533420Z,\n/85/freq : 5185.3,\n/86/time/start : 2014-10-24T07:15:02.620976Z,\n/86/time/end : 2014-10-24T07:15:02.540654Z,\n/86/freq : 5205.85,\n/87/time/start : 2014-10-24T07:15:02.629505Z,\n/87/time/end : 2014-10-24T07:15:02.547895Z,\n/87/freq : 5226.4,\n/88/time/start : 2014-10-24T07:15:02.638031Z,\n/88/time/end : 2014-10-24T07:15:02.555136Z,\n/88/freq : 5247.13,\n/89/time/start : 2014-10-24T07:15:02.646559Z,\n/89/time/end : 2014-10-24T07:15:02.562373Z,\n/89/freq : 5267.59,\n/90/time/start : 2014-10-24T07:15:02.655085Z,\n/90/time/end : 2014-10-24T07:15:02.569611Z,\n/90/freq : 5288.06,\n/91/time/start : 2014-10-24T07:15:02.663613Z,\n/91/time/end : 2014-10-24T07:15:02.576852Z,\n/91/freq : 5308.69,\n/92/time/start : 2014-10-24T07:15:02.672138Z,\n/92/time/end : 2014-10-24T07:15:02.584089Z,\n/92/freq : 5329.24,\n/93/time/start : 2014-10-24T07:15:02.680664Z,\n/93/time/end : 2014-10-24T07:15:02.591327Z,\n/93/freq : 5349.88,\n/94/time/start : 2014-10-24T07:15:02.689189Z,\n/94/time/end : 2014-10-24T07:15:02.598565Z,\n/94/freq : 5370.34,\n/95/time/start : 2014-10-24T07:15:02.697718Z,\n/95/time/end : 2014-10-24T07:15:02.605805Z,\n/95/freq : 5390.98,\n/96/time/start : 2014-10-24T07:15:02.706243Z,\n/96/time/end : 2014-10-24T07:15:02.613046Z,\n/96/freq : 5411.53,\n/97/time/start : 2014-10-24T07:15:02.714772Z,\n/97/time/end : 2014-10-24T07:15:02.620281Z,\n/97/freq : 5432,\n/98/time/start : 2014-10-24T07:15:02.723297Z,\n/98/time/end : 2014-10-24T07:15:02.627522Z,\n/98/freq : 5452.63,\n/99/time/start : 2014-10-24T07:15:02.731825Z,\n/99/time/end : 2014-10-24T07:15:02.634759Z,\n/99/freq : 5473.18,\n/100/time/start : 2014-10-24T07:15:02.740351Z,\n/100/time/end : 2014-10-24T07:15:02.642000Z,\n/100/freq : 5493.82,\n/101/time/start : 2014-10-24T07:15:02.748877Z,\n/101/time/end : 2014-10-24T07:15:02.649238Z,\n/101/freq : 5514.37,\n/102/time/start : 2014-10-24T07:15:02.757402Z,\n/102/time/end : 2014-10-24T07:15:02.656476Z,\n/102/freq : 5534.92,\n/103/time/start : 2014-10-24T07:15:02.765931Z,\n/103/time/end : 2014-10-24T07:15:02.663716Z,\n/103/freq : 5555.47,\n/104/time/start : 2014-10-24T07:15:02.774456Z,\n/104/time/end : 2014-10-24T07:15:02.670957Z,\n/104/freq : 5576.02,\n/105/time/start : 2014-10-24T07:15:02.782984Z,\n/105/time/end : 2014-10-24T07:15:02.678192Z,\n/105/freq : 5596.57,\n/106/time/start : 2014-10-24T07:15:02.791510Z,\n/106/time/end : 2014-10-24T07:15:02.685432Z,\n/106/freq : 5617.13,\n/107/time/start : 2014-10-24T07:15:02.800035Z,\n/107/time/end : 2014-10-24T07:15:02.692670Z,\n/107/freq : 5637.76,\n/108/time/start : 2014-10-24T07:15:02.808564Z,\n/108/time/end : 2014-10-24T07:15:02.699908Z,\n/108/freq : 5658.31,\n/109/time/start : 2014-10-24T07:15:02.817089Z,\n/109/time/end : 2014-10-24T07:15:02.707149Z,\n/109/freq : 5678.95,\n/110/time/start : 2014-10-24T07:15:02.825615Z,\n/110/time/end : 2014-10-24T07:15:02.714386Z,\n/110/freq : 5699.41,\n/111/time/start : 2014-10-24T07:15:02.834143Z,\n/111/time/end : 2014-10-24T07:15:02.721627Z,\n/111/freq : 5719.97,\n/112/time/start : 2014-10-24T07:15:02.842671Z,\n/112/time/end : 2014-10-24T07:15:02.728862Z,\n/112/freq : 5740.52,\n/113/time/start : 2014-10-24T07:15:02.851194Z,\n/113/time/end : 2014-10-24T07:15:02.736102Z,\n/113/freq : 5761.07,\n/114/time/start : 2014-10-24T07:15:02.859723Z,\n/114/time/end : 2014-10-24T07:15:02.743343Z,\n/114/freq : 5781.7,\n/115/time/start : 2014-10-24T07:15:02.868251Z,\n/115/time/end : 2014-10-24T07:15:02.750581Z,\n/115/freq : 5802.25,\n/116/time/start : 2014-10-24T07:15:02.876777Z,\n/116/time/end : 2014-10-24T07:15:02.757818Z,\n/116/freq : 5822.8,\n/117/time/start : 2014-10-24T07:15:02.885302Z,\n/117/time/end : 2014-10-24T07:15:02.765059Z,\n/117/freq : 5843.36,\n/118/time/start : 2014-10-24T07:15:02.893830Z,\n/118/time/end : 2014-10-24T07:15:02.772297Z,\n/118/freq : 5863.82,\n/119/time/start : 2014-10-24T07:15:02.902356Z,\n/119/time/end : 2014-10-24T07:15:02.779534Z,\n/119/freq : 5884.46,\n/120/time/start : 2014-10-24T07:15:02.910884Z,\n/120/time/end : 2014-10-24T07:15:02.786775Z,\n/120/freq : 5905.01,\n/121/time/start : 2014-10-24T07:15:02.919410Z,\n/121/time/end : 2014-10-24T07:15:02.794013Z,\n/121/freq : 5925.64,\n/122/time/start : 2014-10-24T07:15:02.927936Z,\n/122/time/end : 2014-10-24T07:15:02.801250Z,\n/122/freq : 5946.2,\n/123/time/start : 2014-10-24T07:15:02.936464Z,\n/123/time/end : 2014-10-24T07:15:02.808488Z,\n/123/freq : 5966.75,\n/124/time/start : 2014-10-24T07:15:02.944992Z,\n/124/time/end : 2014-10-24T07:15:02.815729Z,\n/124/freq : 5987.3,\n/125/time/start : 2014-10-24T07:15:02.953515Z,\n/125/time/end : 2014-10-24T07:15:02.822969Z,\n/125/freq : 6007.85,\n/126/time/start : 2014-10-24T07:15:02.962040Z,\n/126/time/end : 2014-10-24T07:15:02.830207Z,\n/126/freq : 6028.48,\n/127/time/start : 2014-10-24T07:15:02.970572Z,\n/127/time/end : 2014-10-24T07:15:02.837448Z,\n/127/freq : 6048.95,\n/128/time/start : 2014-10-24T07:15:02.979097Z,\n/128/time/end : 2014-10-24T07:15:02.844683Z,\n/128/freq : 6069.59,\n/129/time/start : 2014-10-24T07:15:02.987623Z,\n/129/time/end : 2014-10-24T07:15:02.851923Z,\n/129/freq : 6090.14,\n/130/time/start : 2014-10-24T07:15:02.996148Z,\n/130/time/end : 2014-10-24T07:15:02.859161Z,\n/130/freq : 6110.77,\n/131/time/start : 2014-10-24T07:15:03.004676Z,\n/131/time/end : 2014-10-24T07:15:02.866402Z,\n/131/freq : 6131.24,\n/132/time/start : 2014-10-24T07:15:03.013202Z,\n/132/time/end : 2014-10-24T07:15:02.873640Z,\n/132/freq : 6151.79,\n/133/time/start : 2014-10-24T07:15:03.021728Z,\n/133/time/end : 2014-10-24T07:15:02.880877Z,\n/133/freq : 6172.43,\n/134/time/start : 2014-10-24T07:15:03.030256Z,\n/134/time/end : 2014-10-24T07:15:02.888115Z,\n/134/freq : 6192.89,\n/135/time/start : 2014-10-24T07:15:03.038784Z,\n/135/time/end : 2014-10-24T07:15:02.895356Z,\n/135/freq : 6213.53,\n/136/time/start : 2014-10-24T07:15:03.047310Z,\n/136/time/end : 2014-10-24T07:15:02.902594Z,\n/136/freq : 6234.08,\n/137/time/start : 2014-10-24T07:15:03.055835Z,\n/137/time/end : 2014-10-24T07:15:02.909834Z,\n/137/freq : 6254.71,\n/138/time/start : 2014-10-24T07:15:03.064361Z,\n/138/time/end : 2014-10-24T07:15:02.917072Z,\n/138/freq : 6275.18,\n/139/time/start : 2014-10-24T07:15:03.072889Z,\n/139/time/end : 2014-10-24T07:15:02.924310Z,\n/139/freq : 6295.73,\n/140/time/start : 2014-10-24T07:15:03.081418Z,\n/140/time/end : 2014-10-24T07:15:02.931550Z,\n/140/freq : 6316.28,\n/141/time/start : 2014-10-24T07:15:03.089943Z,\n/141/time/end : 2014-10-24T07:15:02.938788Z,\n/141/freq : 6336.83,\n/142/time/start : 2014-10-24T07:15:03.098469Z,\n/142/time/end : 2014-10-24T07:15:02.946028Z,\n/142/freq : 6357.47,\n/143/time/start : 2014-10-24T07:15:03.106997Z,\n/143/time/end : 2014-10-24T07:15:02.953266Z,\n/143/freq : 6378.02,\n/144/time/start : 2014-10-24T07:15:03.115520Z,\n/144/time/end : 2014-10-24T07:15:02.960504Z,\n/144/freq : 6398.66,\n/145/time/start : 2014-10-24T07:15:03.124048Z,\n/145/time/end : 2014-10-24T07:15:02.967741Z,\n/145/freq : 6419.12,\n/146/time/start : 2014-10-24T07:15:03.132576Z,\n/146/time/end : 2014-10-24T07:15:02.974982Z,\n/146/freq : 6439.67,\n/147/time/start : 2014-10-24T07:15:03.141105Z,\n/147/time/end : 2014-10-24T07:15:02.982220Z,\n/147/freq : 6460.31,\n/148/time/start : 2014-10-24T07:15:03.149628Z,\n/148/time/end : 2014-10-24T07:15:02.989460Z,\n/148/freq : 6480.86,\n/149/time/start : 2014-10-24T07:15:03.158153Z,\n/149/time/end : 2014-10-24T07:15:02.996698Z,\n/149/freq : 6501.41,\n/150/time/start : 2014-10-24T07:15:03.166681Z,\n/150/time/end : 2014-10-24T07:15:03.003936Z,\n/150/freq : 6521.96,\n/151/time/start : 2014-10-24T07:15:03.175210Z,\n/151/time/end : 2014-10-24T07:15:03.011177Z,\n/151/freq : 6542.6,\n/152/time/start : 2014-10-24T07:15:03.183735Z,\n/152/time/end : 2014-10-24T07:15:03.018417Z,\n/152/freq : 6563.15,\n/153/time/start : 2014-10-24T07:15:03.192261Z,\n/153/time/end : 2014-10-24T07:15:03.025655Z,\n/153/freq : 6583.61,\n/154/time/start : 2014-10-24T07:15:03.200789Z,\n/154/time/end : 2014-10-24T07:15:03.032890Z,\n/154/freq : 6604.25,\n/155/time/start : 2014-10-24T07:15:03.209315Z,\n/155/time/end : 2014-10-24T07:15:03.040131Z,\n/155/freq : 6624.71,\n/156/time/start : 2014-10-24T07:15:03.217840Z,\n/156/time/end : 2014-10-24T07:15:03.047371Z,\n/156/freq : 6645.35,\n/157/time/start : 2014-10-24T07:15:03.226368Z,\n/157/time/end : 2014-10-24T07:15:03.054609Z,\n/157/freq : 6665.9,\n/158/time/start : 2014-10-24T07:15:03.234897Z,\n/158/time/end : 2014-10-24T07:15:03.061847Z,\n/158/freq : 6686.54,\n/159/time/start : 2014-10-24T07:15:03.243423Z,\n/159/time/end : 2014-10-24T07:15:03.069085Z,\n/159/freq : 6707.09,\n/160/time/start : 2014-10-24T07:15:03.251948Z,\n/160/time/end : 2014-10-24T07:15:03.076325Z,\n/160/freq : 6727.55,\n/161/time/start : 2014-10-24T07:15:03.260474Z,\n/161/time/end : 2014-10-24T07:15:03.083563Z,\n/161/freq : 6748.19,\n/162/time/start : 2014-10-24T07:15:03.269002Z,\n/162/time/end : 2014-10-24T07:15:03.090804Z,\n/162/freq : 6768.74,\n/163/time/start : 2014-10-24T07:15:03.277530Z,\n/163/time/end : 2014-10-24T07:15:03.098041Z,\n/163/freq : 6789.29,\n/164/time/start : 2014-10-24T07:15:03.286056Z,\n/164/time/end : 2014-10-24T07:15:03.105279Z,\n/164/freq : 6809.84,\n/165/time/start : 2014-10-24T07:15:03.294581Z,\n/165/time/end : 2014-10-24T07:15:03.112520Z,\n/165/freq : 6830.48,\n/166/time/start : 2014-10-24T07:15:03.303110Z,\n/166/time/end : 2014-10-24T07:15:03.119757Z,\n/166/freq : 6850.94,\n/167/time/start : 2014-10-24T07:15:03.311635Z,\n/167/time/end : 2014-10-24T07:15:03.126995Z,\n/167/freq : 6871.49,\n/168/time/start : 2014-10-24T07:15:03.320161Z,\n/168/time/end : 2014-10-24T07:15:03.134236Z,\n/168/freq : 6892.13,\n/169/time/start : 2014-10-24T07:15:03.328689Z,\n/169/time/end : 2014-10-24T07:15:03.141476Z,\n/169/freq : 6912.68,\n/170/time/start : 2014-10-24T07:15:03.337217Z,\n/170/time/end : 2014-10-24T07:15:03.148711Z,\n/170/freq : 6933.23,\n/171/time/start : 2014-10-24T07:15:03.345743Z,\n/171/time/end : 2014-10-24T07:15:03.155952Z,\n/171/freq : 6953.78,\n/172/time/start : 2014-10-24T07:15:03.354269Z,\n/172/time/end : 2014-10-24T07:15:03.163189Z,\n/172/freq : 6974.42,\n/173/time/start : 2014-10-24T07:15:03.362794Z,\n/173/time/end : 2014-10-24T07:15:03.170430Z,\n/173/freq : 6994.97,\n/174/time/start : 2014-10-24T07:15:03.371322Z,\n/174/time/end : 2014-10-24T07:15:03.177668Z,\n/174/freq : 7015.52,\n/175/time/start : 2014-10-24T07:15:03.379848Z,\n/175/time/end : 2014-10-24T07:15:03.184906Z,\n/175/freq : 7036.07,\n/176/time/start : 2014-10-24T07:15:03.388373Z,\n/176/time/end : 2014-10-24T07:15:03.192143Z,\n/176/freq : 7056.62,\n/177/time/start : 2014-10-24T07:15:03.396902Z,\n/177/time/end : 2014-10-24T07:15:03.199384Z,\n/177/freq : 7077.17,\n/178/time/start : 2014-10-24T07:15:03.405427Z,\n/178/time/end : 2014-10-24T07:15:03.206625Z,\n/178/freq : 7097.72,\n/179/time/start : 2014-10-24T07:15:03.413953Z,\n/179/time/end : 2014-10-24T07:15:03.213862Z,\n/179/freq : 7118.36,\n/180/time/start : 2014-10-24T07:15:03.422481Z,\n/180/time/end : 2014-10-24T07:15:03.221097Z,\n/180/freq : 7138.91,\n/181/time/start : 2014-10-24T07:15:03.431010Z,\n/181/time/end : 2014-10-24T07:15:03.228338Z,\n/181/freq : 7159.37,\n/182/time/start : 2014-10-24T07:15:03.439535Z,\n/182/time/end : 2014-10-24T07:15:03.235579Z,\n/182/freq : 7180.01,\n/183/time/start : 2014-10-24T07:15:03.448061Z,\n/183/time/end : 2014-10-24T07:15:03.242816Z,\n/183/freq : 7200.56,\n/184/time/start : 2014-10-24T07:15:03.456586Z,\n/184/time/end : 2014-10-24T07:15:03.250057Z,\n/184/freq : 7221.2,\n/185/time/start : 2014-10-24T07:15:03.465115Z,\n/185/time/end : 2014-10-24T07:15:03.257292Z,\n/185/freq : 7241.75,\n/186/time/start : 2014-10-24T07:15:03.473643Z,\n/186/time/end : 2014-10-24T07:15:03.264533Z,\n/186/freq : 7262.3,\n/187/time/start : 2014-10-24T07:15:03.482168Z,\n/187/time/end : 2014-10-24T07:15:03.271773Z,\n/187/freq : 7282.85,\n/188/time/start : 2014-10-24T07:15:03.490694Z,\n/188/time/end : 2014-10-24T07:15:03.279011Z,\n/188/freq : 7303.31,\n/189/time/start : 2014-10-24T07:15:03.499222Z,\n/189/time/end : 2014-10-24T07:15:03.286249Z,\n/189/freq : 7323.95,\n/190/time/start : 2014-10-24T07:15:03.507748Z,\n/190/time/end : 2014-10-24T07:15:03.293486Z,\n/190/freq : 7344.5,\n/191/time/start : 2014-10-24T07:15:03.516273Z,\n/191/time/end : 2014-10-24T07:15:03.300727Z,\n/191/freq : 7365.14,\n/192/time/start : 2014-10-24T07:15:03.524799Z,\n/192/time/end : 2014-10-24T07:15:03.307965Z,\n/192/freq : 7385.6,\n/193/time/start : 2014-10-24T07:15:03.533330Z,\n/193/time/end : 2014-10-24T07:15:03.315205Z,\n/193/freq : 7406.24,\n/194/time/start : 2014-10-24T07:15:03.541856Z,\n/194/time/end : 2014-10-24T07:15:03.322443Z,\n/194/freq : 7426.79,\n/195/time/start : 2014-10-24T07:15:03.550381Z,\n/195/time/end : 2014-10-24T07:15:03.329681Z,\n/195/freq : 7447.34,\n/196/time/start : 2014-10-24T07:15:03.558907Z,\n/196/time/end : 2014-10-24T07:15:03.336918Z,\n/196/freq : 7467.98,\n/197/time/start : 2014-10-24T07:15:03.567435Z,\n/197/time/end : 2014-10-24T07:15:03.344159Z,\n/197/freq : 7488.44,\n/198/time/start : 2014-10-24T07:15:03.575961Z,\n/198/time/end : 2014-10-24T07:15:03.351399Z,\n/198/freq : 7509.08,\n/199/time/start : 2014-10-24T07:15:03.584486Z,\n/199/time/end : 2014-10-24T07:15:03.358637Z,\n/199/freq : 7529.54,\n/200/time/start : 2014-10-24T07:15:03.593014Z,\n/200/time/end : 2014-10-24T07:15:03.365878Z,\n/200/freq : 7550.18,\n/201/time/start : 2014-10-24T07:15:03.601540Z,\n/201/time/end : 2014-10-24T07:15:03.373113Z,\n/201/freq : 7570.73,\n/202/time/start : 2014-10-24T07:15:03.610071Z,\n/202/time/end : 2014-10-24T07:15:03.380353Z,\n/202/freq : 7591.28,\n/203/time/start : 2014-10-24T07:15:03.618594Z,\n/203/time/end : 2014-10-24T07:15:03.387591Z,\n/203/freq : 7611.83,\n/204/time/start : 2014-10-24T07:15:03.627122Z,\n/204/time/end : 2014-10-24T07:15:03.394832Z,\n/204/freq : 7632.38,\n/205/time/start : 2014-10-24T07:15:03.635648Z,\n/205/time/end : 2014-10-24T07:15:03.402070Z,\n/205/freq : 7653.02,\n/206/time/start : 2014-10-24T07:15:03.644176Z,\n/206/time/end : 2014-10-24T07:15:03.409307Z,\n/206/freq : 7673.57,\n/207/time/start : 2014-10-24T07:15:03.652699Z,\n/207/time/end : 2014-10-24T07:15:03.416545Z,\n/207/freq : 7694.12,\n/208/time/start : 2014-10-24T07:15:03.661227Z,\n/208/time/end : 2014-10-24T07:15:03.423786Z,\n/208/freq : 7714.67",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 9,
							"architecture" : "x64"
						}
,
						"rect" : [ 155.0, 44.0, 1285.0, 767.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-9",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 509.0, 355.0, 262.0, 31.0 ],
									"presentation_rect" : [ 510.0, 355.0, 0.0, 0.0 ],
									"text" : "maybe use /bounds to make more cross map-able, e.g. a path could have x1 and x1... "
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 509.0, 315.0, 210.0, 19.0 ],
									"presentation_rect" : [ 509.0, 315.0, 0.0, 0.0 ],
									"text" : "currently line only, also add other shapes"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 960.0, 404.0, 53.0, 19.0 ],
									"text" : "mapping"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 51.0, 510.0, 82.0, 19.0 ],
									"text" : "o.timetag /now"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 974.0, 435.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 51.0, 479.0, 47.0, 19.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 51.0, 701.0, 57.0, 19.0 ],
									"text" : "o.route /_"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 11.0,
									"id" : "obj-48",
									"linecount" : 11,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 51.0, 533.0, 607.0, 156.0 ],
									"text" : "map(\n  lambda(i,\n    assign( \"/norm/\" +i+ \"/x1\", (value(\"/\"+i+\"/x1\") - /scalar/x) / /scalar/width),\n    assign( \"/norm/\" +i+ \"/x2\", (value(\"/\"+i+\"/x2\") - /scalar/x) / /scalar/width),\n    assign( \"/norm/\" +i+ \"/y1\", (value(\"/\"+i+\"/y1\") - /scalar/y) / /scalar/height),\n    assign( \"/norm/\" +i+ \"/y2\", (value(\"/\"+i+\"/y2\") - /scalar/y) / /scalar/height),\n    map(/map/x1, value( \"/norm/\" +i+ \"/x1\" ), i),\n    map(/map/x2, value( \"/norm/\" +i+ \"/x2\" ), i),\n    map(/map/y1, value( \"/norm/\" +i+ \"/y1\" ), i)\n  ), aseq(0, /count - 1)\n)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 51.0, 449.0, 50.0, 19.0 ],
									"text" : "o.flatten"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-20",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 51.0, 7.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-22",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 51.0, 743.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 9,
											"architecture" : "x64"
										}
,
										"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 11.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-46",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 50.0, 130.0, 32.5, 19.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-45",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "FullPacket" ],
													"patching_rect" : [ 102.0, 130.0, 117.0, 19.0 ],
													"text" : "o.select /scalar /count"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 175.0, 61.0, 19.0 ],
													"text" : "o.collect"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 71.0, 19.0 ],
													"text" : "o.route /play"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-12",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 254.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-45", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-46", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-45", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-45", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-46", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-46", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 51.0, 413.5, 153.0, 19.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"default_fontsize" : 11.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Arial",
										"fontsize" : 11.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p collect: /play\\, /scalar\\, /count"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 115.0, 219.5, 100.0, 19.0 ],
									"text" : "o.select /scalar"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 11.0,
									"id" : "obj-37",
									"linecount" : 8,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 51.0, 280.5, 423.0, 118.0 ],
									"text" : "/count = 0,\nmap(\n  lambda(a,\n    if( !strcmp(a, \"/line\", 5),\n      assign(quote(/play/)+(/count++), value(a))\n    )\n  ), getaddresses()\n)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 51.0, 191.0, 83.0, 19.0 ],
									"text" : "o.route /events"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 51.0, 249.5, 83.0, 19.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 11.0,
									"id" : "obj-26",
									"linecount" : 10,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 51.0, 38.5, 423.0, 143.0 ],
									"text" : "map(\n  lambda(a,\n    if( !strcmp(a, \"/staff\", 6),\n        /scalar = value(a)\n    ),\n    if( and(!strcmp(a, \"/events\", 7), /type == \"g\"),\n        /events = value(a)\n    )\n  ), getaddresses()\n)",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-50", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 203.0, 438.0, 155.0, 19.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 11.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 11.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p normalize-and-scale-events"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 692.0, 167.0, 56.0, 19.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 71.0, 1063.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 368.0, 164.0, 56.0, 19.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 203.0, 378.0, 100.0, 19.0 ],
					"text" : "o.route /outstave"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-24",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 298.0, 124.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 298.0, 205.0, 106.0, 19.0 ],
					"text" : "o.pack /getstave 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 203.0, 296.0, 114.0, 19.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-10",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 203.0, 332.0, 310.0, 31.0 ],
					"text" : "/outstave = value(quote(/stave/) + /getstave)",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 203.0, 263.0, 88.0, 19.0 ],
					"text" : "o.route /1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 203.0, 227.0, 88.0, 19.0 ],
					"text" : "o.route /page"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 203.0, 189.0, 91.0, 19.0 ],
					"text" : "o.route /Layer_1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 156.0, 189.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 156.0, 120.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 203.0, 155.0, 35.0, 19.0 ],
					"text" : "o.var"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 203.0, 31.0, 50.0, 17.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-1",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 203.0, 71.0, 85.0, 43.0 ],
					"text" : "o.svg @autowatch 1 @separator -"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.svg.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.var.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.flatten.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.timetag.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
