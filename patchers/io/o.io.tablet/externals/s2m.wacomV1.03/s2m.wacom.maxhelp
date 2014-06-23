{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 3,
			"architecture" : "x86"
		}
,
		"rect" : [ 100.0, 100.0, 936.0, 572.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
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
		"showrootpatcherontab" : 0,
		"showontab" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 26.0, 936.0, 546.0 ],
						"bgcolor" : [ 0.943878, 0.943878, 0.943878, 1.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 2,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 98.0, 269.0, 128.0, 18.0 ],
									"text" : "(as of driver 6.3.1-w2)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-6",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 4.0, 5.0, 357.0, 47.0 ],
									"text" : "[s2m.wacom] is distributed in the hope that it will be useful but with absolutely no warranty expressed or implied. any use is at your own risk :)"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"frgb" : 0.0,
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 361.0, 347.0, 19.0 ],
									"text" : "- nopointer won't work when max is in background"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 209.0, 266.0, 20.0 ],
									"text" : "- pressure is given between 0. and 1."
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontface" : 3,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-1",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 4.0, 267.0, 94.0, 20.0 ],
									"text" : "Known Bugs :"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontface" : 3,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 4.0, 164.0, 281.0, 20.0 ],
									"text" : "Main incompatibilities with the [wacom] object :"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontface" : 3,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 4.0, 71.0, 145.0, 20.0 ],
									"text" : "System Requirements :"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 100.0, 148.0, 20.0 ],
									"text" : "- mac OS 10.6 or newer"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 120.0, 148.0, 20.0 ],
									"text" : "- max 6"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"frgb" : 0.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 289.0, 347.0, 19.0 ],
									"text" : "- it is unsafe to check the \"nopointer\" checkbox from the tablet."
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"frgb" : 0.0,
									"id" : "obj-10",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 309.0, 347.0, 32.0 ],
									"text" : "- with a screen tablet (such as the cintiq), the X and Y ranges are incorrect in \"background\" mode (and if you're not in 'clone mode')"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"frgb" : 0.0,
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 342.0, 347.0, 19.0 ],
									"text" : "- the Z-axis value isn't correct"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"id" : "obj-19",
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 260.0, 370.0, 7.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"id" : "obj-21",
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 148.0, 370.0, 7.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"id" : "obj-22",
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 383.0, 370.0, 7.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 189.0, 266.0, 20.0 ],
									"text" : "- no \"poll <event-output-delta-time>\" message"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 43.0, 65.0, 62.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p notes"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 26.0, 936.0, 546.0 ],
						"bgcolor" : [ 0.943878, 0.943878, 0.943878, 1.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 0,
						"enablevscroll" : 0,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-2",
									"linecount" : 26,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 9.0, 217.0, 522.0, 326.0 ],
									"text" : "s2m.wacom has been done with ObjectiveMax - A framework for creating Max objects using Objective-C\n\nCopyright (c) 2009, 74 Objects LLC.\n\nRedistribution and use in source and binary forms, with or without \nmodification, are permitted provided that the following conditions are met:\n\n 1. Redistributions of source code must retain the above copyright notice, \n    this list of conditions and the following disclaimer.\n 2. Redistributions in binary form must reproduce the above copyright notice,\n    this list of conditions and the following disclaimer in the documentation\n    and/or other materials provided with the distribution.\n 3. Neither the name of ObjectiveMax nor the names of its contributors may be\n    used to endorse or promote products derived from this software without\n    specific prior written permission.\n\nTHIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED\nWARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF \nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO\nEVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, \nSPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,\nPROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;\nOR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,\nWHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR \nOTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF \nADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 2,
									"id" : "obj-3",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 4.0, 212.0, 573.0, 334.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-33",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 117.0, 397.0, 18.0 ],
									"text" : "Version 3. (for OSX) by Jean-Michel Couturier, CNRS-LMA, France, 2003."
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"data" : [ 427, "", "IBkSG0fBZn....PCIgDQRA...jC...fFHX....PCfPeG....DLmPIQEBHf.B7g.YHB..AHVRDEDUXUX6XEsCCCBBTZ1++uL6gEaPJhGHKYocjrz4DgCOAbkXl41MWNz+.QzvyYyiHQzcWaSDY9o0ZMpyjybPmn0y6c.HhtZ8inqG9jySLyr0BIhFbnkQpHPiX2rX3PpHy7v2sDjT3nLoFCn5hfAl4OA4p7vUFZFHVcTxxVUTKP66KLYDCLSP2zj61nX.Eikwjq.hD7qxm9VXHMSJEKPYAXKaaMumdQvWILoWkWK.idz0p+WFoLlbUodD.p88NU0svPo4jdG8rxK09zBC6fmRyI8xgP5WhrgrSshxXRMvlso4Y+e5pqVBJfk9ShgcYQouKMmTtyYsoIm2K+qh.T6uAlblCydcuLL4rwn9R+7jIQVDhiyBzLh2sktzq8Q9lAtix+f7tHujC5k+Qt0utfj90k3oubcdR10nigCuI8D4+UDQ55Oqoek9RGCmLojM5MrixLHNVNF884j8RJmwySnExafZT9WSO2TeXB....PRE4DQtJDXBB" ],
									"embed" : 1,
									"id" : "obj-11",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 140.0, 57.0, 26.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"data" : [ 1438, "", "IBkSG0fBZn....PCIgDQRA...jC...vEHX....Pr9d9v....DLmPIQEBHf.B7g.YHB..ETURDEDUXUX4W9FRS8EFG+yTm+axXXd2aJrqUqXIFAw.2KFEA1+nhJXQuXETQQLHpdgjUDEKjhjHCqHn+hQsZiHRn+QEpDDrRkfZqlhDzHponUFZK1xyuWHd+4b26lE4K90uuvAN2y86yy44478btOmqNmNcJ3+APLYzVyZVyjhe+cZ47GbwRAm3DmfXwhwO9wOXlyblLv.Cv0t103m+7m.PVYkESYJSA.hEKFe6aeSwVIIIk981auIwczwFKzqWOKYIKgBKrP.HTnPDLXvThIkLVKTe80Kzhmjjj.PTd4kKNvANfvtc6hku7kK1xV1hXsqcshZpoFw5V25Dm6bmSwdIIoj7QUUUkp9VMtiMNb4xknyN6Lk3slZpIIdYokZb5SeZBEJD.rqcsK1zl1TZUuJqrRtyctClLYBGNbvvCOLqXEqfd5oGrYyFs2d6TbwEqps28t2kMtwMlV+Od3zoSt5UuJVrXA.FbvAYngFB.xO+7ShqlIoGOdvue+JOWTQEk1I8ye9yDOdbb3vAgBEhktzkxadyaHRjH7hW7B5pqt37m+7pZqd85owFajie7iOwxPfZqsVk9UWc0TTQEgACFXdyadzRKsjDWcLhjB.iraXDzTSMgUqVwhEKDOdbl9zmNe7ieLEdlMalryNalwLlAkTRInSmNRjHAkUVYLqYMKBDH.50qmu+8uSkUVIW4JWgO8oOQO8zihO15V2JW7hWLkDQmNcHIIkDWc5zkTL75W+ZpnhJR6BhlJ4pW8pU1JnWud17l2rlNYG6XGXxjId4KeIFMZDSlLwsu8sot5piBJn.BFLHgCGlHQhvqd0qRw9KcoKgCGNHVrXoMXUCicAWKnoRZ1rYjkk44O+4.P73wI2byUUd4latrpUsJ74yGVsZkAGbPjjjvpUq70u9U5t6t4Ke4Kje94Sas0llpyBVvBns1ZKow0h6ae6aYNyYN.Pc0UG26d2igFZHJqrxHQhDbqacKEazTIAHu7xSoud850j2G9vGvue+jWd4QznQQVVlBJn.hFMJgCGl96ueJrvBwrYyoa5n81aOsuerviGOJ8qt5po4lal.ABvMtwMRY6ql0Im+7mOO3AOP448u+8m1Isu95iFZnANxQNBO6YOCiFMxvCOLBg.CFLvQO5QY6ae6.v.CL.qe8qeBmPpgqe8qiQiFYe6aeTZoklQ9pVixiGOhUtxUJDBQR2dohJpP05j.hoN0oJZokVDtb4R3xkKgACFDs1ZqBYY4jpaM9Zeu6cuSo8qTmbz1wN1wRhygO7gmX234fG7fbpScJJojRnu95C.18t2Mm7jmTU91samoMsowYNyY..YYYt7kuLABD.a1rgMa1niN5ft6t6TrUVVNiJgVXO6YOr28t2LxKs23wqWuB.Qs0VqpueTkzmOep99wB2tcmQ04WQIWzhVjpyyDVI6pqtvhEKrgMrALa1LKdwKF.d+6eeFOC7vG9PUq60QGcjwU7IJra2NO4IOQ4Y+98iSmNUkqlIY80WOc1Ym7nG8HkDbm6bmDMZT74yWZCfhKtXJu7xSY7Qul3eB7zm9TxJqQJNzZqslVem1+B4wO9wrrksLZngF3PG5P30qWMWsFKF8L33QvfAU8ODTBlb92vIQhDpxozRKk6e+6S1YmsxXKbgKLoZoiGosNILxVuYO6YiWudyDUEb1ydVzoSWJsQuKbu81aRiOV6FEM0TSp56KbgKvbm6bAFQAyImbRx2pgIk+mzsa231s6ea66u+90rtbUUUE.zbyMqbLJSXRII+cQjHQnwFajadyaR3vgSK2ssssMg8aR2c8uUjwyj+MfblHes7+53e.r7+YYyBpv4A....PRE4DQtJDXBB" ],
									"embed" : 1,
									"id" : "obj-10",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 170.0, 57.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-9",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 76.0, 140.0, 305.0, 29.0 ],
									"text" : "wacom object for os9 (version 2) by Richard Dudas. Copyright (c) 1999, the Regents of the University of California."
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-8",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 76.0, 169.0, 347.0, 29.0 ],
									"text" : "Special thanks to Atau Tanaka for suggesting this object back in the Bionic days. Thanks to CNMAT for sponsoring the version 2."
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-35",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 130.0, 45.0, 402.0, 19.0 ],
									"text" : "[s2m.wacom] by Charles Gondre, CNRS-LMA, Marseille, 2011-2013"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"data" : [ 42377, "png", "IBkSG0fBZn....PCIgDQRA..APO..D.jHX.....VyJow....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI68tGeabccuu+V6AOHI.eIRpmVxvRV1IVNRxQ8QhSZD7w0wM2SRrbel1SZr7MsNo29v12b7s2y41VaeR5se9zzVY2zVm3jbjbSSaRZ9T47vIWGmTR475zOwRVxIJ1Vzxhxx5MoHEIAIH.l859GyLjff.yL.XvCBs9pOPD.6AydiGy7aVq8Zs1.BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBKBpQO.pF16yOXOgBgsWp1CkCi7adS2xH0wgjfffffPCgPM5APkv+zOYvsSLcu.ztHh5ov1O+j.G+BLN6k0OL.dn5+HTPPPPPn9xxFA8897C1SzPpcyLtKBz1Kz2BYxAb7KB7RmkwzyY8bZc8ebJHHHHHzHnoWP+y8iGLoBzcQjZ2..TAB4NVie7KtzWKQzNqCCQAAAAAgFNMkB5yaMNv8RDknv1mdNfScoEaMtfffffvUxzTInuDqwKn8ScIfieQFm5R0+wlfffffPyLMbA8+kmevD5PpcCf6pTVi+pWzxs5kq03DvR1eBBBBBBshzvDz+7uvytKl36hIZWEK24BDqwKxEHHHHHHHzJRcUPeuO+f8DIj59.vcQDRPE3T8omyZdwO0kfL23BBBBBBkA00BKCybR.LXwZ6Ge1Ki+3m5HAde9M+c24x5hmiffffffeP0nG.0Zt8O8fIaziAAAAAAgZMMMB5aruXM5gffffffvxVp2B5iTpFhEogGv8BBBBBBKaotJnSDMR8r+...KotlffffPqOMMtbulgHnKHHHHbE.MUB5acMKYgSSPPPPPPvGT2Ez0Z8P0y9Sontqm8mfffffPiflJKzqEvL1didLHHHHHHTqooRPWRcMAAAAAgJiFgf9DkpAI00DDDDDDpLZDB5Ae8c0EHhRVO6OAAAAAgFAMUtbWrPWPPPPPnxnoRPeS8EuQODDDDDDDVVRcWPWoTGtd2m+u83CJQ5tffffPKMMUAEWsBSBREqQPPPPnkllJWt+lViTCXDDDDDDpDthvBcodtKHHHHzpScWPmHptOG5hftffffPqNMUtbG.XUc1VidHHHHHHHrrilOA83Auftr.sHHHHHzpSCQPWq00U2tKKPKBBBBBs5znrP2k54tQ8bbHHHHHHzRPSmK22XsnZwwRdnKHHHHzZSSmE50BHEItbWPPPPnklFkfdIWw0jEnEAAAAAgxmlNWtWqVfVti8Nn31cAAAAgVVZ5DzqUjNmDo6BBBBBstzPDzaDq3ZBBBBBBsxzzETb0pEnEkVhzcAAAAgVWthwk6ZHtbWPPPPn0kFkf9HMn9UPPPPPnkjFhfNQzHt09VWSv6cbodtKHHHHzJyULtbWpm6BBBBBsxbEiftfffffPqLMLAcsVOToZqlDo6R8bWPPPPnElqXrPWpm6BBBBBsxbEiftfffffPqLMRA8RVs3pEQ4N.vs+XClnlriEDDDDDZvzHEzubcuGCgD089TPPPPPnNf3xcAAAAAgV.ZXB5JkZjR0VspdtCVrPWPPPPn0jFoE5iT26QQPWPPPPnEEwk6BBBBBBs.zzZgdsHR2Ih1VfuSEDDDDDZBngIn60BzRMBoZwIHHHHzRRnF8.nTDKhQidHHD.7XCd6ILTHIqzI.SGVaRG926Vd5QZziKAAAgVMZnB5ZsdBkRUTql2XewwO7jiEn8GQTx.cGJTTdrAu8DFg3cAf6kHq.QjfBf.TJfG+YemCAldh6YmO89ZfCyVNx+hmHPS.hG5dd6OSIKfSBBBsVPMxN2zzbPkRkrXs84OzIwm+PmLv6yu4u6NanumaUYuCtydxpZaWf36hT96BmXlGwDzc+68K7zCUaGcst7XCd6IBYf6kIdWDQIJrcl4QfldX4hmDDZ8ooUP+aO74weyAd4.uO04zWyS+6cKiD363q.YdQbEtChvtJ2WO67WMuuHlyc+28sbfIB3gXKINetyDeuJetnCo07giXN2sHeFKHz5RidNzK4IWVU71pM8nU4ecjZyN+JC9TO66bWfvcjEXWDUYAZHm2cHh1cFina+w+d21cKtHtz73euaa6LS2qym6TYb83JEs8rTzS73eua6VjOiEDZMoQKneDfx2xNg5ONh3DvtHhpprEfWxc.Hh1NqwfhfyhwIdDXF2EAZ6TU3SMhndXF6euCtyaRrTWPn0iFsfdIYi8EqlreIFaG.CUS14sX73euaa6jVcWLw6tZEwcnXh4NPD0CqwfO1281uyqjmW8EGOBHI.gpQHOeHhRj0H59AvsDL6QAAglEZnB5JkpjVIDKRsXnwfYIWzciEEjUfRXEb5AiZhah4yCQ8n.F7wG71to64VtxxRcGufjinca8IdsIDWHEk7w+tuy66d9E9VORMoCDDDZHznsPuNdBaaUDEWiV4WV9By71mL8410O7Uer6Hmd1sC.b1K+BAaerj6391nUzfO9f21szpKp+XCd6ITgz6l.cWEKJ0qg7f6cvctOw06BBsNznEzckstldvKb1f37M77+usK2EfkPtVq2C.R1UaqF29M7vy2VlbovIuzO.G509mvTyc9pqeVxc7daHB8Xpvf+cCda2xePKlnNybOmepWN4O8zO4cMStw10zoOeU+Yb4BQTOYBEcO.3tqqcrfqvu3pRfP4RTp1oMO1P0uQivxMZnosFy71AvyWp1++9odg.PPmy6+A.qG5+u64+zU7yeHy7tAvd8y1N7EdF7COwmBYxMc42OK4N9Ya3ERoMFGNsdta49aArjjYtGsVuGkRs6Baa54NON1EdF7SNySVQeNWojKKtFox803fewUk.Fl6RC5NTJjzOuFMyi.fgTZ5.HRlmjtlKur+XCgfgF5psFQjqVdU8k+0BDysdPhpbmtrGl4cAeJlC.r4Uda3Wd6+8nuXap75mkbG+rM7h1bBX6QoH9dr1rBy7t0Z8IJlXN.P7nqBu40+9w6aGOAt5Uby0swUHCbu0sNSXd3g6Ko4v8uWDVeBnn83Wwb..EQITDsaXf8ByHiadr92O+xCr6Z2nUX4BM0Keparu3Uwqtnh4.jJQUrSW1CybBsVW1BjwitJbma+uGW2JuM+0OK4N9Ya3k78EC.hnc82O3s8P9dv1jgoo4dAvdKUYNNehDJFts23elu+btZgId26cvcJAJZcB9kGX2lC2+yCRMnhncGD6Skh1ELvdMGt+SHB6WYSCWPWq00.2EUBwbAn0ZeIrTJdGa9ifabs2oqaSPJl6.QzC9IF7VS56AZSBlll6sTVk6FuiM+QpKh5DQVoHmPMC9EWUBygGXOlGafwgA1qh7W08qbQQTBQX+JaZ3B5vkHcuxrP2aw7a+wFLYEriW1Cy7tJUo1sb3sbMeH7VtlObw6ikbG+rMtKlyymfBp8umkQVSVoh4N7N17GAqo6sFfinhCSr318Z.7vqbWlGq+8iv5SnHbeJU8IkYmWX+XCLH+xCHAA7UPzLHnWRhW14htXYtaXGQ6AB23Z20RrfrVJlC..h5ILu7X9zqVwbGts2vChHgplodxaTJZ6O1f2dhZZmbEB7I5tGyg66gLGt+S.h2uRQMLuenTHILvyaNbeOTiZLHTeoYPPejfY2TFh4FW4EXbLyIUpfM9Ax2sv0Zw74uOgc8I91+h2WEMfqSvLeeAgXNf0bp+VulOTPrqbEI33pNlOH2LiLthTOnp9VSAbEEodPyg6+44WbUIZziEgZKMCB5kbMR8MsF+VCXJSKyuBLR20Zsmmv9odtuJts+r2AdqOvMga6O6cfO6y7ovzyNkqul2wl+HXENQ+dMVLms2HF3A2SSpEk1YPPf4ID.qrLnV65cM3j0zNnEkZQPtUKPQz10F5mmGdkR7RzBSyffdUh3lcufYtGkR45Axeim6qg+7uzChTomBDAjJ8T3y9LeRbWOx6CCeF2WFae223eIhXTZ2BGvh4fHpGkUji2TgeyffomcJ7YelOE98+j+t32+S96hm549pdtueyq+8GHiwRg31c+Cy71Mm7I2i4Ed3ww5dh8pRbnsiMcArnaWyv.q8IA5+iAz46CHz5azCanTnGP794i0eSsGtDpbZ3B5JkZD2ZeUc51xnZkIlSf2o2aUKE61sFO23mA+sO0eETJZI2N+kOK9C+z2CF9rkVTORnX3c+l9KKZaAsX97h5fRtmuUykq20Z898JCBdkycLb2+c+V3y9s+T3PG+4vgN9ygO1W7AwG6K9fttuWS2aslaktQHVrdyEXl2soo4yCfmW04cbepA9y5AwdWEWrV0MP62LP22CvJ+aAt5CZcaEOPiWbWQ6wb39a5tfXgpmFtfN7XNzK85htXYteQq02gas++7e+wQpLSCxfJ5sTYlF+QelODdkydrRtO5K1FwaciKNx2qUh4N+0x06MGQ8too4CoTJWin3yMwYw8uuOLtvjmEJ0hWA0dpm6qhG4q9W4Ze3U5BV8PWocgt9Bl4j1B460quickPqGn2GvRXesOIP6usfaPVlnHZ2lGq+8ymn6lhieDBFZFDzq.pZw7DA1PoIGa2smrTsOc5ovSe3udQsNO+ayjYZ7+y+7GASmtzyo9Mt1cgD8YUkyp4h4LfhPOblPMbKMXl2tRob0D6omaZ7Pe4G.yjYZqOSM.H0hq7xewu6mGG53OWI2GW8JdqnynqJXFzEAhfXgddvL2ioo4d.vfUkPdwn8aFXs6ugJrqTztz4BOnHp25Pyfftqk+0kFXbAfk4WYUs3R5VieuW5.fTvW2N+jmE+I+K+Wcsy14l+HKjlU0Pwb.15uDsqO92rwUvYrqO6ddQEep+88fSL5qX60CXKpacwR4ym8Y9Ttte17ppsEalG66d6IqocvxDrW3hFToT01o0wQXe0OQCwU7Jh1tHp25PCWPmHpLpTbAma124dG7Jhe.q0ZWci5SeDusNO+auvqcH7DG3SWx8WjPwvN27GotHl67Xhwd2y9aLtdWq02mWVu8+53OK9NG8a.RAnTVh4jsXNYrXWu6Lu5khZY0iiAfB5j0rNXYB4IlW+JJKwdW.q+e2ZN2qyHh5sNzvEz8hEBJtfcNyaK8ULKipIKUCSmdJ7Bu1g.onx51+3y9owQN4gJYGlnu2JttUcandHlaqBkHSjZrkTEA+3p8TyMMdjm4OGj8ED47YX9VnqL7uU5witpZRvwsv0eck87nauH5LX0TdjqXTcaEU7q8Iq6VqKh5sFzTHnq05gJUaqJdTHA.Wkg87mWxKb4Hu1gJKqyy+1G+q8+v04S+l23GBwaKu46sFIly1OGQpG7u3atyDk2mPUG9ox68Y+d+sX1LSCkBfnE+YHk2bomuq2OzweNb1wOSI2mAsU54+8BQTx.cmuLBl4jvmKhN0TZ+lsrVO16pt1sJh1tNa3FdLoHT4zTHn6GBZwblthvBcWeOZYct+l+7BucgoNK9je6RqmEITbbyNQ8dMVLe9m2zntcxH6pAWR21lidlmGC9xey77twh+Lzw86NVoS4468u328etj62fb4UsXGWck37na6l882nGGyipaq4UeEOP8saUztjTZa4KkawRuVwHkpg2zZ5oFXYNChzs7tVRq0IUpReMau5EFdIQZc4vybzuAdma8cistg2bQaOQe2LRrhaFmXrev7OWMSLmAHfjezu1NS9m9dNvPU7aJefcfv8ft8YK.vd+geBP1aBwVB5JqoHvdPaMtUFN+kgoo0y+r+jAw88dKd.HFITLzWrMgwRc7p68QId.o4sCfgppc9xHrKHPUja14zSirG6.H2q7rH2qePfrSAXeAaPAPs2IBcUuYXrt2LBkXmf5bMkWGz6C.D4FAtveDf9xk6vqhPQztMGtuSZr4wdn5RGJDXzrXgdIK+qKh.RL25+oqNH1aM4rM2Z7mb5muhc4tys+lu4GCola5R1G2x0+QPT6nduVJlyrsq20pZt0EZsdOdcx+uwQ+x3jW5U.QVVd6XQdgwivBVnuf05..mc7y3ZE5ayUoa2c6hjIx8e2zJg8Em4YAApPzSbVLyW8ihK+W+KhY+FeTj8UNvRDygB.YmB4N4Avb+u1Cl4KdGH824A.O8YKuAYr2kUjvq7aovt5QQpGTVBVW9Qyhftqrp3sEvh4.3JibQujtb+UuvvfHT02tvTmE4LyVxTOLRn3XGW86utHla8ZnDO7924CUMen4F1AB2tcaalIyz3e842qsXtsK1ySXeA2smu62yKx2UDXFSzemCTxOWql.iyGd7JYEuyWlg8EmUVS+V5m8yfo9ze.j4G+TfLfkHtAuDw7Ecexp8bmbn8QwWys3VbCUThdiVh5Quwx5kUUXf8JK+pKunoPPWoTtlK5ktZwUNTXf0ws7tb2sUWsW8hCW1Q2dot0cG8d+tMN155tSr1drDfpkh4NOFZ089f0nzXyOAB223m9kwrYSYKluXgbRQPQkHZ2yO2zI996NVOCUp9nuXarhJxL9Y5qHhRr2ljJvWsDl4cUNqJdb5owTO9G.oOvmAbloJawbF7957C9b2MQzPFFF2B.tSsV6+z1sAHpqIHQ99xHZJDzAfq+nNVzpcp9KTLGfn5XNl1.vNhcKIWXpyVwADW92.ggHhFRq0Oha82aaSe35hXNy.LgdXMEnq3Y.yK.jzss4hSeN7u8BOgUtkaWdWIBVh34awdgWXTdh5jBi7e7Wcj8oTpuha8U4ZkteDycHcn1Z0O9vWKjNNXd9gwjeh6Dlm+X1h3nhDyyeeRD8jJk5ZzZ8S56Atp65pntRgdz4BOXcoyDpZVVHnuo9J8J4k2rTw7h+DsbjvsF+Im94ghnp+l89SoTOraVaze7MgsdU2YMWLWyy+518+8uzNCTQI+Xc9+1K7D.D.VzTSPyehdkZAgcG2tOuPtcUjyPgGF.fHZH25qxQPubDyAlOv3ZYQq09N8zLO+vX5+w+O.mdpJRLWC9vEJl6.QzDFFF2I.JZ6Ek5snNQaWh78kGzTHnSD4pK2qbbWL+1erASVa52FOZsNgasewoNWvXgtxpz8RDMgRob006+rId+HpQ7ZtXNyLzL.3fyJc6EekDtsMmb7WAe2S7zyKhO+eyeNzoEx674sNmVXd0IhF5.erCsOm8oay0peEzKWwbfV6.iiYd2d4oEGpVwbF7Dlpr2hW8CQz9.vM4aWvW+E02sDjbM+zTHn6EKsdt6Gth0xbG1oaMdwoOWdhLUyMLetzPDsO2DfhFJNd6a9CWWDys2mI+i+W1Yxp8CRl4d.v850184Oz+vREyWzewBB3yK1u3ncmH8CWvt8.kp+hGcUdNO5UhXt81lnL15kMXGU695B8zSb1pRL25Fem8d2GwWhzDQG11E79y.GU2.C72V2h9cMg8HAIWyMMMB599Gw9B+Il2hWbYJo6DOwnCGHVmSJ.EQij+91KqzeCq9ch01y1p4h4N2Wq4p1Ug14btqtm8ktvQvKcwiX4tcf4c6tkxcAh44UnYTz7VlChng9N+oGbn72uJkZH3BqH1lJYaUrXN.HUqYEiyOeWB.vomFo9R+wUkXNC8C24cu3uO8BaOccK997gNAJWcPTWoPOZEuWIH4ZdooQPGtLO5kWTt6eKyYt0s3x3Vp3jJyzAj04DPAB5DQGVq06ysw1O+07aWmDyA.Ph6+y8KTw04cl4D9YE2Z+G8Ir0vKhU4kxZ87rPmT.rhKz5b.OVMBKka2qFwbGdrAu8DU1qr4D+9cI.vreq8TwA.GT.LyGty69fOTkLNqHQ8U+DURWU1XUy2i7f0kNSnrY4gfdm9UPubbyNChvU6yc7xJrcQbIYjwdk.yB8hUqAUJ0861bAttd2JdiqwdwaoFJluvboyO38t2JKMrzZsmm75kt3QvK6XcdoDwssBGKJJ2wByuNv9d5G3+XnB22DQS31I16K1FWxyEDh4..HTqka28aTsm4HOExbjmphEys+N2+A4VQvNX4tIemu5sey.q7usZ5Reihv8wCuxcUW5LgxhlIA8i3Viwh3UpqUdh41jvyQ0xSbcpDlI.sP+q7688Gpv8usEFEyZy44meie.DIT7ZtXt01S8XxlksUE9oHx..7Y+Qe7E4Zcm6iBD0QQsV2RX2Xoycd936BLSPIly..5VmkRUl4j9IP3zSbVL625QpJwbF3Qhe2+n.YJDUJ0c5aK0678U2V9U0r358lQZlDzcE2ScsJRLGvk4YdYNtag9kdkBbGbkeqTPD8HZsdjR0dWssJbSq+WtlKlq0VaO.tuOzd+4STNeH5mfm56exuEFclyMu61AvBtdegGrz4Qe9HdGfHruux8+eTxOqTJkqWrae1yidfJlC.hZcJOx9wSK..y709nUTQiYAwbdhrbFWuX1xgx1868+w.Z+sETceIQoPOxJyVyGMMB5dUs3JMUrXN.QsjAEmVqqaVn6FJkxU2N9V1zuM5psUUyEy0ZqmixZ36S.4WK59J+z+Qq6jmE4t558EIlS..SvpbdI.35wFqH1FCbwb6Gjnx2SMO32uKy9xOKx8ZGphEygUwD598aTs6WJaQ8Uuu5x5otRQ6Rb8dyEMMB5vihKyVWawL5rxEycdzN26fspVoWRFMU.kC5DOja8icEjy0s4stoOPcQL25uTxO3i8ymzOeF4GK599m7agQm87yegMNVjOu2Kx2M6EDrbKTE43G8q76UZqyc9bzs16K+HcOnDys52jU9dq4A+7cImdZL62dOUkXtl3Qh+A9Q6qV7dvVT2ekJVmkd05PjuKtdu4hkMB5KkpWLG.HT5bshVouS2Z7hoNev3ucOrPmYlTJ0GzssYKq6chqp2sU6Ey0.ZlgV6sU59svi7Ueo+wExRMGqxsdzhlubmmpP2uCvSjKRHWKYtN3q.iK.Eycdhk60zc+Zc9b+nu.3oNaUXYN.AJvb0dwfHZDaK089bkQuQf9+n0xgC.DWu2rQSiftWUKtMthX48nfQL+JnhLyhHnzxcSOmYl..czidzWOWtb++5134ss4OPcRLGfYNwu8i9VbM0k7iEce0W5ygQm471efZ8eT9B1XgObJcglQ8vek69.98BYGoTMrlt2ZMQLG.HMVdWS28y2k5KeVj449hUkXtF0NqyyG6hOiq05g4oy2m0sZLhq2adnoQP2KVXAZIXEyU.Iq1wVSHIJUC+zyc3fSPuHysKyLwLqFZngLFYjQhDKVrNFczQ+m0Z8TkZLs9UrMbiq6cVyEycdrIyO3csmsUTKOssNuje9A.LS1ow293+aK3hc6+Nu84ELG5KdN0IGWvOxW5Cd.eYctMtFXbc1V4uxqA3iiiT5DUzNtI.67NOoWa2beuOC3rSUwh41wNQM0577wthL5ue6z+GstTdXEWu2bPSkftay2pUTtGzVl2ZZhtWBRAXQk4x4uecrJ+fG7fF81auQylMamyLyLCb4Ke4dlbxI+mbaL81utO.hFJd8PLGLS8LqN5Rhfc6xBpmVz8sO99wLYSgE72dd2MOOruDWum21CE6OqrrwqJFWetTw3JEdebDCrLN0N8s04G8opJwbF7Hwe+0dqyyGCCi62W4ndcp7vZuprE3qvgBkGMUB5tgSdnG3h4L457M2pwnoNWfYgtJue8XKlqFd3gC2au81QGczQuLyq0vvXSLy234N24lbt4lqjtWt61WM9Ytle4ZtX9BOl18c7Wrij4OFzZ884Gqy+Nu59seT9NV2QLu3tdmr2Zh..ig9W9.Gv+KYlVLhaMVrBLia3SwbnvxyEoEl4d7SMDXtevmoJsLG.034NuTXGjbi34FF8FAVwCT6GODsad39RVy6HgRRylf9Ht03JKrhwIVluD7ZcPezTmedwlp9FVrK1O0oNUjLYxDyzzreSSyMvL+F.vVIhtI.r0KdwKNpaisetM9qftZe00bwbS6+x4sZr42Efku1K+4vLYmdg3GfxKeym+uK006K1s6EsDu5JTAkX2BwsZ5dg3Wwb..yko0pAsV6YIdUO4YQ1e5WupDy0M.qycvIx280F288.D6cUiGQ.ZPR.x0.oYSP+jt03hpo6AfXNC.zhtHT3FAkK2ICiC..5nG8ngFXfAZahIlnqPgBsRsVmfH5FXl2N.tIl4ajH5ZSkJUWSN4jlkZb0V333c9l98qKh4lVVou820CuiGBXdqycU7ZrYNO91yacNJPDGKZ9zWbprsfq2Av997+1GXnx86L6wXIec9cNzKGwbF.jGUcvlXtKu1fLG7KTcVlS.D3mnF9dvSrClX+M8MqrN35chRXNbeOTMsSDJIMUB5Jkx0H9MtSfwETh4WAxnyDbtbOrQDkSfuEMZzdiFM5ZHh1Dy7M.KKyeSLyuAhnM.fAXl6ZzQGEZ6UMkhwaXMuMb08usZtXto47u1GbO6+OeWJkx6Ha+k+bK5wTd2aAK1ySemV3wDHvLlPMmtrl67BnjGe3GWtWth4..DQK6rPmYdWdM0I7bSgru3SUUh4f.xjIW4DXi0DrqJidOENptqO06cVcu7KtpD09NRnPZpDzgGUDqMth30Dw7a8wdlj9a307i1i5ucP5x8XFsG1Iv2LMM2..dCLyuI.rUl4afYdSDQqA.8BfN.PjLYxnFe7wc88v6Zq+90EwbS6mOiNy9cc.AfiM1Kfe3o9VVOHuINedg7BlO8E4G94mhB9QeB+mlZEiJNR2qDwbGdrAu0jdMvZlPq0dactXtKH5...H.jDQAQ0y+EAxNUUIlyLuuftpvUonTp61W4mdr2UM206JE5QaXJAHWCflMAcWIdQWfVpVKyuxxV84CNq.3e8FcfNyOv2zZ8MwLuchna..IHhVI.5B.swLGF.jRonwGebjMa1RNFWcOWKdqa9WotHlaZx3cdSuGO+b6qYacdd52K9CUfEMe5K0067HeteyAeH+98Twvqxib7nEWPuZDyWtgcpp4YNQm6E+5UkXNH.VSOZs6cR4QYMe50CWuqncIAHW8mlJAcuJwkar+BWfVB.wbF.5VxbQunL5LAmE5u+q69OcgA9FrrReC.nel4X.HByrgRoHkxp3kq0ZbwKdQWGm25V1scZrUiEy296Aa+Z1gqikCete.d4wdg4eLUP6K0xbrDWuyU4xooMtZA1ZKxZidUKlaEnII8Xb0Lg2h4u5Afd5yVch4fOb72evrhpETXWpk8dJ.pStdWBPt5OMUB5dwhsPOfDya8v0zLJHmC8hD3aaB.qkHpWhnN.PXlYkiPd9L8zSiYmc1RNNaKbb7tuo+fZpXd6QhiceqdubS9EO5mz5NTAuM7oq2YF66I909NC4YG4AdcAuQBs3K3MXDyWdgVq8LSExbjhDLbkgXt8WvOQM5sPUgRodXesHtTOb8NQI3i0umYafPvQSmftaQx6FmeITM3DyY.PDuyxcb1Di6AwT.Yct8I0VRfuAfNAPTl4Pv1E6kZnbtycNWGp+La7WBabkaulHlapY7qby+VX08tVWGCemWc+XLmR7pymeK7mhKpmeprw7DbnbUSfvsHbadRyOv3BRwblbesAnYA60u9DtsM5oNKLOygpNwbBHSzr6qF9Vohw1069yaP0AWuqA8fREjq9QSmftWDOhwhdb0JlekFA07maE01EOv2JzE6khrYyhwFaLWGu2wN9CqIh4qr60he821ukq88LYmFesiUXAtiJx8JByK7y28SbmUUfvUHkz5q31AEWfJlWNirFL9w57rG4KT0h4f4mr26r4HX3JFDQGVq0Ormanp6Z9B3hUEjKhmYPhPvPynft6Q5ddyidfIl2hrLQZSIuZ3W5hGIvrNOV3tlCnzA9leGrdEfbqaEWK9k11cGnh4ll.+gu6OBh2dmtN19RG8ShYxN8RafJPTujtdmex+m+p+6kaEgyKFoTMzYzUUSDyWFsLp547madxCTUh4DXvbiM2y8CFFFOjub8dmuOf1ea0zwhhv8IowV8glQA8K6ViwKVIfsprL25Q6bOsFqK5Jkx0BARPM+48FtO.WB7M+hVqw4O+4ccaRdC+Zn2XqNvDy210rC7N1xs3ZeZklZOSosBuvFJPTm07D4nb9y0mkGmzsFcesQu0zxbf4y8bWOFN2H4ELbUpXNvDwdeGLnuHsZB9dUYqdDfbFZI.4pCzzIn6Up4rw95LvEyACDJTK45hdMCRoB4Ufu4WlYlYvzSWDKgso8HwwG3c7eOPDyM0L9S9M71ajeoi9IW57kuHJhq2yWTWw2Y.6pc.38wGQCYuLCGvh4+cCdaM0Gen056vqswbjCTUh4f.XhWVHlC.+G06gVeMuVuqTHojFa0dZ5DzgGolSr7iz8.RLmA.qLaIrP2MFaly6c4b0m2TDo7Sfu4GzZMelybFsaUPtqaM2Dt0a7WupEy+cdmeXrFuBDtSrebpIO9hdth9FrPWuaCy5G9ydmUeTsWBb83ihu1nWkVly.FP2re7gqtamyLExN7SUUh4f.XV0zj649A6ndeDO2vtuGKg8ZHZ16pwnP0Qynf9Ht03lblC8.TL25tTSsEH9Al4Dt09ny3tqsKGHxx85UiXtVqYsVyDQlZsNyniNZoyiM.7d+Y9f3p5ayUrX9lW60iO3s8gbcLM1rmGe87CDNud2UP6L3m7ydmemGxiWU0PYl6yUuXNC.FFMsGe3G2saNxApZwbMyiD+Wu4J2y8B6nd2aWuq5Fn+OVMcrnTHI+xCr6ZZmbENMcB5dspREKRn.WL29d0172n9PBu1ffZNzWU6WUUMP0ZMC.lHJG.lC.SM93i+5yN6rkLFJ5HZb76bq+InsvwKawb.f+Te3p88c3+pkFHb9006Le3bb1Zw7luPePTYTbYBFwbq6xMsVn6G2sm60NPUIlC.PDV13t87gH5I8UsdO16p1FfbLflXwJ8ZHMcB5..t4hnMUjbQO.DyAs7cUkx2TU9Eu.ZyniJ90ZaUtF.YYlmgYdb.bFl4ietyctmxzzLcodsW8.aF+1ui6qrEyuu26+Ur40d8tNt9NmX+3X4UQ3VDtIpSD.yGNCm8VpEyadg3VsZXABNwbqGyWseFaMH7zc6lu1ApJwbP.Zs5IpcuEpsnTp62W058ZU.xY+iIEQIDqzqczTJnCOb6d94hdPHlC.vr2V2tbmW6xuRQO4UEeqLIeWrCfLDQo.vnDQuF.dI.7ByM2bO6LyLy+fa6mctk+y3ccS+F9VL++7Oy6E+F+B+WbcrsDWsWFvL+j0KwbuXMcuUD3h4..fRTMiqZE9xc6mL.DywxO2smO1d9z64+uVDfbE7iIMwRwloFwxRA8M1uU9CGfh4fnVBA8Dt03rYS0nzxy2E6YAPZ.LIy7E.vHLy+ThnCqTpmmH5mbpScpOoVq+lts+9e+VuejbKuaOEy27ZudeEU6O1O5gKdNmmOEXkNy7DLy28m4NdlZRDs6BGvOaTvIlC.zbtLp5qna+TGnpDysu+PA9fuNictoOhmaX22SvUA4JxOlTDkPmIjTRXqAzrJneR2ZLdjPApXtyi24e2Sur1s6ZsNgqa.gfaRz8+XZQVkCfY.v3LymkH53DQ+T.7BDQ+X.7RFFFuVGczwEmYlYtasV65uCtu2yeFdO+b+ltJl+O7g+zdNF+RG8StjnZujPVB4f4GNqNy07YtimYe96EV+XMcu0.VLG.TS6TRkzsF4LSAyScfpULGfwWoVL3q23qxBaPUA4J4Ol..T2qXkdvSSoftRoFws1K5ptVUJla8DM8olSURvMK5qrMuCJthE3a.3hLyuFQzKwL+igkX9OkY93yM2bmct4la7ToRMS73wuneN4yG91++DOz66uBCz8ZVjX9uy67Ci+w6+K3Y0f6vm6GfuyI7b4PG.1Vjq4GNiNy07ouim4gZTtX2qbQunTEh4rqmXtwgepc6AgXNyXhX+pKOJlLdgcto686kNeeUWZr4wuYTJpGclHhU5ALEaAFuYfQbqwUEus7dT.IlaQRzB3ZsRwKO5QBr8UaFs6Z6NA9FybNl4zvRLeLaKyOI.dUhnSxLeJCCiymISlw6omdl83G+3YSlLoFVWHvfLy2O.1ia80a6MlDus2XRbni+b..35V606oPN.vol733INxesmaGy7HDSOZFcl80LLO4vqkQ0d1FNykyK39BHw7Owf2Zx+vaolke8kMZs9tTJ2sIw7TGn5rLuEwc64icZr4YYxEq7S.bFu2rkfmW.37e3du7I59Qnq4xMCGSMOLydZ4CQTS4k4trTPe0c5HlDbh4LyfnVhTWqjTFdJuhw1pbX6h8rDQyxLONQz4YlOE.NIy7qRDcRhnypTpwLLLlJRjHoW+5Wet0u90qy+fEhnGwzzbaJkZ2d02u4M8y36w4LYmFOwg+qccdyYlGh.8ne526yzrYcl+sPuEzx77HoWaf4qefpULGDoaIb2tCDQiXZZ9vJkGE5k1uYqzXa1uu+249VL2dgawxJ8Gx+cPvQQDtm+a+gFZHpyN6bImwbpolhSlLIy77GcvMSh6MkB5DQivtb1DKWtGrh4..PyMqySneYmMxNOOWraBKWrOCy7k.voYlOg8blOBy7oLMMuP3vgmXlYlYlb4xkYG6XGlnDGbXmxMa2q5TueYlrSi+le3+WEcdyYlm..6SYpdzG+N+ViDD8WPCQzDtc7wZbxE8.WLm1NZRrV0tHJ45uGbb2dUIlCfYgYy1EzU0nTpGQq02qWYH.56iB75+m72NsLDyy64paVomm.97+0Q3ts1ZihDIBM4jSZDKVLiMrgMnRkJ0hJo0Zsl2vF1f9kdoWRmJUJyt5pKySe5SaZKt6btuFp3dSofNfUtnWp4GKddEWl.SLGXYcjtyLSZstNXCdwoDtXeThnSCfWkYdXhnWE.m1vvXrnQiNE.RO93imKOWrWbYDKAraQq0CVsh5kRLmYdDlwCmUm4IaRbqtqn05C65mEArXNCFP2TUbYR50FX95GnpEyYlObu+xMuKUpUJ1GSc+.XuttgQuQq4Sepuf66vJRLu1aktsHtiU2pN6rSpqt5R4HbmHQBiToRoBEJjJSlLg5t6tCCfnlllQhDIRHhl+WPLyLaZZlKTnPY5pqtRCf41vF1PlCdvClMOwcWOWVsllVAcX418DkpwM0em3UFcp7dlpSLG.fIpj8WyL48i1RJn+xi8BAYLwMePw4kK1yyx7SvLe5LYxLtRoRM2bykYKaYK4RjHgu9wePHpWLw7lX2puDxyBCkVqKYE0q+XabgWSQ2QUfXNCPAVtLU8n056vy4O+zGnpDysueKk61yGhn8YZZ9fdEXgXEOf6B5UnXddsGnVom+wICMzPz5V25LlbxIMV25VWnLYxDJc5zg6t6ti.fnYylMR3vgCq05PJkJhooY6LywIhZG.QzZ87E8DmRTMy7LvxfkozZcpt6t6TLyoW25V2bm5TmJ6EtvExwLWRONVKoYVP+vvkqBeQKRKAgXt8Kdm+ce8sef+f28xlBHg8OdUCO7vg13F2nqmgKHMeOppce4hc.bBOB7Me+C9pQT+TSdb7DG9uddwbl06iUzi9YdOOSS+204eAaG8nG0Hc5zgtoa5lNco19HgrxBjfTLG.PilpojJoaMpG+X.YmpZEygITM8WnW0fcljLnqaTn0aka5W9wWZaUsXdvYkdwNNYCaXCgMMMizc2c2VlLYZKTnPsSD0tooYLl43JkpC.DgHJhRoZiYNNrJC3wAPThHC68IC.S.LGQzT1FsbIhnwykK23.XRsVOYtb4lt2d6clQFYj4FYjQxUusXuYVP200E8ss1dwQNy3HHEysdfQyjaEcEGw7QFYjvYxjoC3hGMBZewWNtXWoTi5VfuUNjmn99UJUR+7Z9NmX+3qer+IjJyTiPL8nyomqYIZ0ckBOAUtb4BGIRj15pqtZOWtbWJRjHk701W7MgQmtfXDnJDyA.HtdDVkdCybR.35wo5hXcd4JlyZLQ7e4kuUGN+.QzPlllC44wRq3A.l5KBjuigB.w7711JxJ8hYMdlLYBqTpnc0UWsmISlXvRbtSCCitAPmLycBft.POLywYlaC.Qru0g812t8iULyj84qzvpVZjhHZRl4wYlGC.iBfQUJ0nJk5BZsdLSSyK2au8NyAO3AyricrCSqftt1Kp2zJn6Ut1FKpABbwbvPq4jnIIvebi7EySkJUGDQ8YXXTcqXJkA90E6gBE5RoSmdlzoSOmaA9VY12S.fagY99zZ8CVp.64Xi8B3oN1mehWbzC8jZhehO66s4IkqbiRIjGJTnXDQcyL2alLY5vMA8HNqK5yuSqNwbF.Pgcl2I2ZXn05jkq61KWwb..FKeV6yqFrSism28MpafdtGfK8wsdbfJlW9VoWJqwYliZXXzAQTWLy8PDsBl4U.f9r+a2.nS6awAPGDQQrWJnCCKq0iBfvLygHaf8bnaWSMxvLOCQzzLySRDMN.FkY971A76qSDc1N5niwLLLlZ3gGN8l27lywLWwFx3WZZEzgG4Z6l5yNOiCPwbFXYQpqkuX9ryNaLkR0mRobsJPbpKebDv4sVZ3CWr2QGcL6oN0opHWr6EDQOBy79.vtyuDf9TC+4wQuvyc3SLwKcfG+89sV1bR47s1nPgbkR0CQTeJkZUZsdUSO8zsEOdgEXoEnynqJucb.HluvcT0iSL4AtVtW4rSA8DGqpDyshNd9.A4ftYEhnCaZZtOOSMztuGfIdb.SWcdJpb+A5sU5t40Jaqw6jYtWl49UJ0pXlWE.52VXuahn3LysaOG4sgEDtsWK9fA.LXlMxKf3rFcDw1+12YgkJisAMoHhtLQzEYlGvouzZ8oXlOW1rYmXjQFYlDIRjsVerSSqfNQzPtkZNqty1CbwbqDOnosDWN+OlGZngTaZSaJ7byMWL6Sxudl4qysW6L4REXii9irFS6z6pl6hcuv1Z8Gw91xVb9t8fG7fFgBEJRgB4DQqB.qE.qiHZ0lllt98cmssZ6cbfJliOy24WeG+N25W5fMJQcl4dfGoql9BGppEysvbnfXLub.kR8v.X2tuQcaIp6XkdQoxMZPoPOHazcihbrre7ZEQzJ.PeDQCXKjuJhn9Yl6gYtShnNf07h6HhGp.g6E8qCt3EXFm3FJhsq5iQD0ErlBndctYOdhq05nDQFoRkB0CQ8lVAc..sVOQobm5p5rsfWLGL3lq.+Ydx+D9CLv.QmXhIhEMZzUn050yLuYl4andMVBSQyRD8Z0KWr2JS9WjVhDIB0We80V1rYimKWtdLLL5mHZ0vVHG.qgYd0LyqX5om1UOIEMTr.WLmAfQnXqZjQFIb8vZiRPRu1.G2sWMh4LyGt867HiD.i2kEXWrY71J8drsRunIYQ06APM36E4In6lPdgdsB.qF.C.KQ8UX6x8tHh5fY1wM5FDQp7EwKT3VobZtnP.ymcOJXogFF.QAP61WzPLhn31ONhgggRq0TpToFsVKp2TKnCOhz8M0ebb77RcspWLGfnluUUp7ij8d6s21LMM6jYteXYs10xLe8s2d66ndMdLQtzLyuHQzqf5nK1aknP2qOv.CDwzzri4lattMLLVoRobDwWOVPHuOhntAPLX4tvRRew1TfKlC.DV095mc1YiMxHijpQHpq05c507mqu3AqRKyAXRcflg3EndhRodXsV69xQagyk97DLSm27qW5W2EdB3gPdgdsBVh48BK2tGy1s5QYlCmWzpOu.tGB2tONsJ3LjivtsK6MfklZDl41bladhHRoTfYlSkJEFd3gSs4Mu4r0h.kqYWPeD2ZLddotVPHl6rida64qk76e+umgpvwbfRgQxd3vg6Qq0qlHZ8.3Z.v0RDsQaAfRxotrOWMw7A4zYmA.+XaA85pK1aEnXtWmYNtVqWgggwpYl2..RPDsdsVuFXMGf8PDEC.sQDEF.FyM2bHZznkYeWjmymh4..lbl2B.91oRkhqWyKXA3ZwEmScVfYNSUIlC.vHxyBq3Ev48UK+EmZak9iBfGz0MbIVoGrI+flvCp.9b9QHG440J6K1sCl4n1GiDBVhrDyLUMB3kBmJImVqUXwB6FNO1Q3VoTZkRYZXXXdvCdP8N1wNxEnCFz7KneR2ZbaqaE3HmY7.UL2xOJ5DU2vNXnXQxtVquJhnMxLes.3ZHhVOy7pAbOX9lM6zA1gcLiKxL+SAvqO2bycIkRkRbwt2TJ2qaZZ1KQT+lllqkHZ8DQIrE0WssqCiAqznILrBXGGqCJYes1d1ZQ5+hLlJCwbv.gTwchYiZt0FKYrZUtWS311nOyPUsXN.vDq3W74dsW5k5nHk3SM.ZZWbNpV7UIgcQVoGrBj.VVom8Xa52Qo95eYWDxWKy7pJzqU4aMNyrx98TvOHKbLufvdgyIOrChtb.XNSSyz.XtPgBkC.5f9hgapEz8J00hGITfKlC.n83jF0CbIR1uN.b81tZec1tduS3gKXCRhnBeX.bRSSyw5omdloRKTLWofWtWmHZs.3pXlWu8eWKQzJg0Eo0ArDxC4Hj6bxCSSyxXLTjmqLEyY.j1brsAfqqHVaXV3KoFPRu1.8EOXUKlaRQe4Tq5+R7PDEovR7Yas0Vtsrks3ThOa4D1Ihln7rRexfePv.JN6tUJ0OzCg7k30JTCsF2OnTJRq0J6.uKl06FnIhxPDkB.SZZZNUjHQRezidzraYKagQ.dbSSsfN7J005uSDzh41m4ZaU9Pt5oPwb.zmggwFXluNl4afHZyLyq2NpNiAq4Ix8uKWTBXTcjVO8k0Z8nwhEal0u90mUbwdoobbutsvd+vZd.iaOObgfcwsnPKMlat4faotV+1EWlfRLG.Pgvc.qKnLiVqmyzzLSnPgxMzPCMGaMoy0reG3q4OezCYcmJTLG.HSzqZDsV+l37JwmlllS2YmcNc1rYm8fG7foAP15YACodh+sR+C4QDuWAX+IogZt2Rel68WcL5tm.tHjiB7ZU8vZbuHeQcXc9YS.LKy7DDQWD.iZZZNYtb4RC.yfLVMb+niFLDQC4V6ymK51DDh4LCPfRTgC4pFeHle8.3pgU.fzErbyTnXwh45Oje8Ie0.aLNq4ryDIRjTIRjHKrt5yVpSnEDvLSLypgFZHiQFYjH80Wew5niN5kHZsJkZilll2..1FQzMAfsAfa..aD.qkHpWXchfHLyFJKJ6STEITr.ULG.HUtK1E.1Dy70ZOcO8GOd7XIRjHDJcp9DTjzsF4INF37K2q.ksXNHfTcdyJ.71Ihdq.3mEVeO8FAvFIhVSrXw5oqt5p8idziVOdOW2grREzG0yMrmeWDnk2+B9sZmz29tAvOKy7MYmEOahHZc.nOX6URl4PLypJ8XjZEJkxwk+Nh5q.VGaudkRs5PgB0SjHQZ6nG8nNAqWvzuA0NpVgVqKoU5wilePwELh4..P0XxEcODy2hsX9FfkUbwwBmv2yeP3159c4RNNa1Mu4MKh4k.GqEN5QOZnd6s2nlllcMyLyLfVquZhn2.Qz1AvN.valY9FIhtVXYExhNQE7vhiYmcVWGGQLVp06UiXNy.lbZCXEUwI.vUyLu54lattAPaG7fGz.0HXlS30hHhdzCV0h4..yz8MO.r994mkH5mG.uU.7yo05sGJTnqWoTWUlLY5IRjHNumaZDRBJrsR28xvpyboGDTjyhDUcpqJLepsikQB44iinNybX1pFw2Oy7ZXlWKybeZsNVtb4Bi.7hBa5EzgUpqUR1155MXEysu+Mum8WWE08gX90AKw79rSIiv1+ft9+iYBOOj4KeITnU4whEqiXwhsBSSy0ZXXrIl4ajY9MCfcXKp+Ffs2VXlm2aKNeuVse21e7Ms3wWUJl67LYMSsRl4qB.ajY9pMLLVY1rYiGJTn4q80Uy3tDjzqMXdAcfJVLetvWUNSU7qBVYPx0wLuEX4AkcPDsCsVuUsVu4vgCuFl4NCEJTjgFZnZ064FF0Uqzc4rHqf120fkYB4E.QDEhHpc6f2a0DQqSoTqxvvn67rROPXYuf9ph29hdbPHlausIppQsOIeQfScpSEYt4lKNQT+1h4WeSmXN.xgriKh4Kf82gDrB5sPCLv.s4XUtoo4FXludTCbud1rY8+XLfDyA.lLyq2MQzpbl+e.r1b4xUSbgnCZsdmdtM4O+4n7EyA.RG6FTjcc.GVdBaMDQafY9ZYleiDQaA.Wu86896niN5vY5FJy2RM8TWrR2iyhzi5YhFFmstKjq0ZtvaUx9w1JcBVE0lXLyqfYd0ZsdUJkp2PgB0d5zoCg.RKd4fftqEN3U20BB5AkXN..z0d2tme.SMv.Cz1DSLQWjUYK7psEyuA+JlGNb3R1O4u9eKDrj22ggNxQNRaJkpS6zKbcFFFWqsU42j8sJ185ECuDzWmcpqEjh4VOlh.ftIhbpGBqiHp+ZgKDyijt0He47l+bTYh4..oa+FHl4vvZk1JJQTLl4tgk395fU.LtIl4D10Cht0ZczCdvCZTCdO2PolaktujHIzs5oq33HobvV3Vq0ZMQjlHxLuaNMUIB6D.LHhZy1J8AfUUsqOSSyX81augGZngBjiYZ5EzUJ0Pt0901uUfwEjh4Lyf.WSizcGK5Fd3gC2au81QjHQ5IZznqAVAdyaz1UeNyYtmVl6lf9rYCt53tfEUPPuc8DQa.0H2qWzwHpEh4.WZtgCAqzoaELyqoVGnOLy8564OGUtXN.Pl3agr+9PQDYvLa.qUfq1IqZ18JYqzK7ZHqB+SeyM2bcrxUtxqrsRuqeixaG6Swb.fdw+JTH3hAn7wQDmY1jVXEjzYgmJE.l19uyBfLDQlkqvtiU51WnXGNd+gsV825zzzLx5V25BjiYZ5EzgGot1p5r8.WLGn1lK54Oe4YxjIVtb45yw0rLyuI.7lrCdpM.qu3a3tYOeBkKzHM5wPijJHn21jcJosBXIDVUQud93Vfw0e7MF3h4r08I6.8IFJHPeXliGTVo6bQS4xk6V7Za0idP.Tkh4QuZnUcrnmyQb2VXOJ.5jHZkDQWEy7Uo05UBfNSmNc3qrmK8xvs6kgXN.fBSi3365+8uGTLQb.Lmsv8jr0JH44AvY.voAvYYluHQzkAvrj0RnZ45Fdx9BDc9MjyBISWDQsM4jSdkgfNQjqyg901emAtXNCFDnZhK2yWLOup+1UaaU91Yl2t88uZXYYdGMSh4..ep67oGoQOFZDD.A8VT6qRutjurQCsPTtGTh4..o0iWz.8gYd0EDnOUz6wBiIAkRcqd8ZzidnpRLG.HSaWsacAAqBWRavJcQGfrpe38SD0I.hFTVY0rgRo1mmaTn06OqzKSwbG5i1qedgkDuDwAvX.3rDQuFYURqeQ.7iAvKPDcT6m6Lvx.y4r2G9FmZ+NQTX6owoG1Nm5CR2t2zKnC.n0ZuE0CPwbmWvO6eYvFo6Lujp+V+FFFafH5M.KqxeSXg.tIvB.NYNzqdJkU4UPPuEHh4NApybyMmqmhLZn3ApXNXfYxMlymGggUAvoOl40nTp0vUY53TrXRfYNoqulKeLf7l+b.T1h4..y09arjskWdEGB.saOu58gEhEhn1VY0xAQzHZsdedtgq3Abu8JTLG.HLNWYaktywH9PD+j.3UHh9oLyGF.+HhneH.99.36yL+CYlODy7wXlOGrJ1PYsmWceakt8EpZvVELptf0436kYNdP418l8JEmCi.WVCjiGMTfKlyfAozIfGQYueoPwb3up+lAWjJDVwn81aujsIygdkii.iS8WOVrXskKWtNMMM6yvvXM1W700.qon4pnEK2ipRN...B.IQTPTUxVi.qpXUfVSosOIBSDYZGXbkL.J5K9lvom3HAlXNCfr5YAxyh07sRmH5L.XTkRkxtzVV5BN+h56RWm6MLLbcoAVe4iU0h4..o6nzB54gB.gIqkIydHqZseWDQsEKVr4K8nsZYAhxOqW5gVOPr2EPpu4RaqJDycd88huLlF+BdtWx63CFVUosbLyYAPF.jF.oHhlF.SQDMNy73.XLhHmaiCfIIhlUq0ZkR0AasdYLGrNltCX4olxM5zcb6dDl43DQ8XOO5wwBWPn+SckhvxEA8i.WVkk1155CO+qeIDjh4fAXl2N.dxpcv6Cw7qGVKSl8AKw7v1yYWcYgEnbf4f4BbVNPdVKZzau8FIa1rcjMa1dLLLVI.tJXEwyWisn9ZHh5CVKcisQDExVHOvbuddmnRyLmC.oIqU2oRGQj.ApXN.vjy85Nk2RhVnlUuB.rZl4UoTpyPDM9jSN4rv5Dpkz8jNeFC.Z3gGNz.CLP37qy882e+2lqu2..O1AW3AUnXtV0AxEd.W2Fm2yvJhkiBqSrGiHpcl4HQhDQMzPCQISlzqg7xNHqUhsmPoT2kqaXO2yREzC.wb.f1wyiv3bHKVcQ2rhHjmE.oYlmkrpi5SCKg5hJhq05wgk02SmKWtYTJUV..hn10Z8L1tKuW1Z8yna6nV2YkUySbBNNxpbN2g89n2f7BBWVHnq7XQZY0c1NBbwbvPE.0zcODyWTNliEDyaZlu7kB6dDu1h.uPVHj+ZPuiU4WMJtU4wPdKjJ0.gb1VHOKQzL.3xoSmdN.bik50ttd1JN83GIvDyK30Ne53.q2+4mNNmu2d6cpgFZnLE6DT4Kj6rLY1Vas0NQTr7qy8gCG1Gye9AWXzTL7w2Bo6vUm.Tr8nBVdeID.LxkKmJb3vMoGyV8X+80iB.2Eza+lstM6Ov9E5m8t2h4NzG1KNG9usnmqTB4.HE.trs.9kfkK1KoHdnPgRwLm1vvHS5zoy0c2caZXXPlllylMaVxzzrKhnyZ6I0UxL2IQTDsVy98Xc6OGMHhh.qyWD21C.QZqs1Lp1KHbYgfN7XcQe0c0dfKlCFP6ha98CkiXdPMe4EiWdriDj6tVZx20uaZSaJblLYZORjH8ZZZtJxJmquZxZ4qsTVkGXdVwY94HqkeQmSTMKrNQ0kXlOmggQN3hfNPvYY9B2mwjYdczUjqxwhUGWP2Krh589Hqhyx3qacqKMrVxQs5ohHj6rdWCfdLLL52zzbMj8xHa3vg2rqeHkcJvyb1pRLG.XN+4tcGXX8dxzNhmMMLLpzbTtolBlJjWb8qe8eOCCi2tquntdeVB5ArXN.Pb7cgB+gPi3tJjyVKDJiAqnU+7DQmC.iRDcoRIhO93imsqt5x70dsWyLYxjr8HfFYjQ3zoSOcjHQtDy7Eg0EFLM.xvL2Frt3N+d7NQVqQ5grE0aC.QzZcnolZJpyN6r0eNzIhNLyk9WGaecqv5NAnXNCFDQIpzwb8TLOZznU5vrrgX2SivkyjefuMv.CDYhIlHVjHQ5Uq0qy105ahHJgyUni5iU4lHu49C.SvLOJQzYAvoxlM6T.38Tp8Smssp7dCFLh4fmedzAxKcbri169HhFvzzr2b4xMJy7rCMzPl4c76RDxU1q20Zsd0JkZMvZ5mVGy7ZiDIhq9AWO5gpZwb.qTVyOXKdnAPVl4YAvL.X1rYyl0zzTaKDrrm7BlwEsj+lJUpOUWc0k6B5c9a.L1GGH6o7nWJOwbqWwzHt9avSfeUWExIhNOQzYXlOMy74XlunRolfYdJuDw27l277k0ZlYZrwFyr2d6Mc1rYmhYdbhnKAqKHXNhHS1JyUJGHhn48xi0zzGLENmkEB5.VQ5tRoJoEyqty1wYmbF6GU8h4Na6N9K9WSdv+a+ZCUNi05sk41+3qt3tO1JdFZonTA9lVq6C.qSq0ajHZy1Vlut5jU4lNySNy7zjU9.OJQz4rOQ0oHhN8ryN6Yba+0U61y2X.Jly.Xlrig9Zay4Ouf4mW5qVoTqhYdrrYyNSu81qd3gGNW3vgoToREJTnPsQDESoTcS4sdWqTp0wVqE7qF.8GNb39CEJjqAcjN+4OOeJyuI7S.wo057EQRCfoIqbSd5HQhj9xW9xl.XY+xoZ9wNRgK4um8rmcrN5niwBEJTettSVwC.b9+HW1fxWL24oWg5KSWl+0xBODxMMMOKQz4TJ0kzZ8kCEJzLDQy4kH9hFkVSyk9fG7fYaqs1lIb3vWF.iyLOIQzrvxKMZsVWtWLuywMJ.nHhBDiAV1HnCOhz8qs+NsEzCNwb.FDo2N.FxuCx5sXtikbvkiPFa1yWI65qHHeqx6s2dCaZZFyIfrHqkGzDvZ4B8ZfUINc9zPC0Nqxclm7TvpzGeA.bFl4SSDcJ66eNl4QCEJjqdLIZnXAtXNfUpqsvqmUjUdo63180RDcUDQWps1Za1LYxPZsN2TSMkQ3vgamHpakRsh7rHeIq20.HVrXwJ8h8tSeO4wV5SVlea3Wqyc5RXInmwNNFlRq0ylISlLc0UWlvmNZtYjBuv17yz.hn9MMMWKQz5Ge7w+wCLv.IccmE+WB3hcCnKVk6txEyArRgsXXn4RgjiWLgbXc7w4UJ0XlllWlHJkooYZCCirm9zm1SQ7h08c0UWlYxjIiooYJCCiofk2xx.WB3SOff0BYjRoTFlllJkRQs0Vas9tb2FWiz8qcftv28UOWfJlCFfI12GsmuXdpTo5PoT0bwbxtlCCKAlhxXyHB5ERorJO+zQiYdivZNyWOy7prEyaGAbVHTrnWG.SwLOF.NGYkmri.fSAqpV0nlllSnTpTyLyLo0Z8ypTp2Qw128GeSAtXdIl8KCXUNa6gHZs1tlbJSSybFFFsSDkKZznQMMM6Vq0CPDsZGKxyWHmHJFrlWwvgcqdF67Y2nEXgdE7sgOSWMGlWPG.yxLOanPgRCfbYxjw4hqW1gGWX6ZAvUwVk71qZrwFKb2c2c1HQhT5ueTcCz68X458EQ0Il6Pu3KnRgjGuXB4.XLmiOxlMaZl4raYKawDkmH9hFBYxjgUJU1PgBk1zzbFaqycDz0vmQ5tMNEYlPvdMCfYNhooYnHQh3DiIUzuiV1Hn6UjtesCzUvKlCFD6uJFmyADCO7vgxjISGDQ8oTp0yKjZZ0Dwbl4rczQG0sShPdT49VNP9tTzizQ6pAvZXlWR5nUiB5MGq9tLy7E.vqCfQXlOAQzqYXXbtrYydICCiT4xka1PgBkcaaaal9MXrBRw7KN6v3560591oykhrRqm3.XkvxMnyAqH58RrEcXXXzGy7p.vpJkPNrhdbJd73t9Y7Rb2dE9MRV+agNyV9I0wUuyvLOa1rYyzQGcXN1XisrSL2iKrc01GCjvNHEWKrVjZ5cpolxru95y8K3xYtzmmfQLGfPG3khEkeoiOG8FdQTDg7b4xk143C6cSUsbOmNcZtu95yblYlIisX9rjUMeOGOung+CLNXcA.N0183JkpivgCG9xW9xF.HWkNNW1HnCuhz8NcpAyAmXt8lmzmiOGAh1BGNbOZs9pf05orSdlWSDyscKKfkki0bLIyk0AEGWloilsEmyW+0CJWrWhfdaZXG85DQuF.NAr9c+qaZZdgPgBcYl4YTJU1sssskC1mnxd61Yo5qA5bS3BSdbDTh4EbcA4sOYmRiZODQqC.Z6O6lBVB6w0ZcOjUwSpWXkGtKQHG14tuWA6Ie47b2dU7MhesPOu4OOCrb45TDQoXlyjNcZyolZpkUB5tYUNVZcVX0vpVCDmHpsKcoKYzau8BkxkPbHrc4fcxuHBRwbmFVIdj08Z7i8OiZnPtCSM0TbrXwLAPFkRMCy7TrU9smw9XXeokZGyI.K3QqXvN3ZyjIiStnCtByE8kEk9U.usLbyCzEBbwb15da6i8O4pU5LyzPCMjps1ZKpooYm1KqhaDVqvVaF1EMlZjX9X1AlSQ4Xi8BUR2zxAWv5NelLYhYZZ1ucoa8M.fsRVkt0sh7VYzfcY8jqvk3zBwobTlmPdJ1pHWbF.7p.3mBfivL+7.3HDQurggwq0QGcbQCCiIu3EuX5Mu4MmEVhkZ6C5Ooa8YDiXHnEymXtEGAyETqp6.VVxk..aA.2D.dyv5y32n8TYrVTvRHKm25ccGcr3EIkhw7B5Uw2H9ofx.L+EfoYlyxL63EkwAvjgCGd1ToRYlLYRcPHdTqI+iEJxZRfuVxeMMMCM8z9XEPqq2GpEh4..Q4i816ge5Kp05SmKWtwzZ8TaaaaK8V1xVxgEe7QUAQDmLYRNUpTlQhDY9fgjrp1bog87n6eOkYUBXgc5dRDMuE5N4hdkNVWNYgNzZ8Pp++Yu2zviiyqyD887UUufFnazf.bAjDjfhBbCRhaRxNxxhvwQKwVNRN2j3kbuV1SrRrSxMdI4Nw2YlHEm3wOYxHGGeimwawikShmrbeFOJJVYFGGaCJYcm3ERpMRwcBPPrQrz.cidqV9N2eTUAz.r6p5kpwF62mm9AM5uuppudop25bNumyQH5qTiens0NN00lD.9GYNX.nfCgRTBXcr3a26d2AlYlYZlYtC6XtdqDQ2pcbmZGVUTJemLG.WMTnPauZ1eUCLLLVy4xcdUR5nUFhd6ZDQCQDcM.Lhoo40CEJzryM2boUUU06s2dM5t6tqXKNh0zlAR37Yg8ecFrJHyYrnzVadTfq2CBqxYY..Dispk1JrU58DfHJ.rt1yhrHuv8U4jJlxoNQMQlC3YCYoPvLyRhn71VmkvNTBo.PdaAwspGUnU4tV8CmZpoPrXwb+.1z8.D51.x+ZEYwTh0XQeU5FFPHjQam+O8llx7m4q42VjWrkUrXwLymOutPHxnnnLm8M1oCKB8J4XRDQDuPtnGB9TtnulwBcaLfaC1YLKuN6mj4LXPRpnULNt.QvkISllCEJzFf0cxtK.rK1JEm1.QTciLmY97ABDXYqoP70emGeMiK2KlkHgBEpsPgB0IQztYlO.rrZ71YlcZWs9dmQqHVkmAVtVeDl4KQD8Z.3j.3DLyuDy7YEBwfNVkmHQh71VcTzKVIDh9c63GK7Vr+7v9yk4+.p5HycFHi9BJcuf0hi0Ggf0ME4TuyairZUjN8o.myGJ54Dt0aB.fUAkI6ntOmx.4KiJDmS5pYG67LzBoP3z.XNEEEsgGd3U0JbuZrJm7nk+pqq6Z66cdD+wKxBpDqyh9p2HYtCDbpOreaQdI.qoowpppFDQZvpIunwVhXkK4RuzfHZw4hNQ0dpqslxBcgP3ZNPeqarUv7UAf+Qla+h2fK24kjdZjUgwnKa2Scq1Vo2A7gx4paj4DQmVHDuoRss2r1o0byRDZYLczJkU4rKhdiHZtLYxjyvvP6nG8nlUiU4K5yB3+j4LrRcsHAtwzQ1wRcXY+rp8Ze9NulPHruVVogWVnKm5jtNd4hbtzg0J.L.LYlyAqRI5D.XL.LkhhR5DIRn2We8UurLrlgOXUdIyniDIR38MeE6cALwSrPJr4Sj4VqIbPb5McGzsMQc2yg4xkiiDIBqppJMMMMsulb0Pl6.mbQe9pmXstFWSQnCO57YVwQ2eIyYvPxKlPeoj4.vQQ68vLuWxp.jrErP7WUpWj4DQm21sMEE9YmVasPiYgWkjNZEq.wfEREsQIWD8FyrlsKDk16CutfgqdMY6scG.veIyWz9qHvIl5N+uWD3KYagWYrVQy+7p.d4x8BJlLNm+MMYUbeFWJkIXlyFNbXCX+c0pITNmKfZrmDL2byAcccO+9Bs83.S8T9JYtCjBkOB.9.dOyZG1siUGR7ZgLutf0Ztb2CB8V8cxblYPDE+fO4Wqa6scQ4ZNVnvwrWaW3tGXcxQbXI1mp1c3kCYtoo4UUTTpnDos5wp6FyBu3zQKjttdzkzyxKT3a6y9BZcvVJM025W4EXUtNrJOjIAvDrk6iNG.dE1RzauRwD8VAtPrrr5iJiTIz2IyYfIxbAuNrUEJGAwcC4edU.i.aDRgmGKF1UFNl4YAvXLyCKkxwMMMmUSSKmcNNupBKwp7Plllwb4bg4EAZ0DtoYloLtrPz2UcgL295zOJepcFuLl85drlxBchnYLMMGPHDcWrwaIT.zYzHXzjY7MxbmsgUT5iY9qiRmq46mrx0bGEsGw1cUUEAQ4Rla+5kD2r3xcdUP5nUMVk6GhdyKrwn615I9HYd8Dkkf37AKz8pBwUn04vRYySQDMpoo4nBgXJgPjVUUUGntIDqJFKGVkuTL6ryh1au8JHE1JX8VzIW9j4..BRD2LbtGE.OcYsfWGi0ZVnC3kU5ap0hRNCT8j41Nd+fv15OEEkvABDHtPHJUtlGoVDAWkPl2UWc45MkkQuLRsjxELNt+sy7GvqhRGMf4iUddXk60kkU4dI5sx73WxyKBo1huSlyLvL47p4aTcvKKz4LiBnmplONkQGVqnVmSDM1RrNeUEY9xgU4EBoThxJE1Z8cs30aQmTkQlOeTcX5iTFaUMCa8eTXLu8kx9reg0TVnaCWKAr8rwVwwuvH9KYt0EzNb+82uXiabi00bMuRHyapolRGNb36oROFqW.uJJczr+NyvV3To.vTLyiRVks0kCqxc0umwZZyX1ri6aj4..ZlkgBmqB3YAkwuhetKVn6k04DQysZw57UBqxWJRjHQ4kBaA5BPeH+kLG.BhND+5ataZ+iOP4rdqFDNbXRHDjccWWo.geVset47amBeTSXMmE5dkhNGd6c3+j4L.Abrcu6cGPJkKJWyAvsxL2Ey7xNYd2c2stpppq+HvOKrLrGoM3xE3Uooil82YSZ6Z8yh5rU4KAdPnuEekLmYfzEIs0pUDHP.2ccKboCqUgviJD2ZBqyWorJeoHe97kYJr8q56j4NPJqqVoSACFjLLLTYlCBfPDQAIq5wd0Pp6HtNI.LEBgjYlK2hSSovZNBc3Utn2ZDemL244ezm8GcWACFrMTGx07pgLGV+XnzlY3yfExAVtNVkbM3hv2fkP2tc.bGLyGv1B8NgUYFsvbo0uE9VN.jjsREsAXlOCQzKIDhSQD8ZlllWTQQYjzoSOc5zoyzc2cq0We8YR9ady5ZJcx9LYN.PZ8I8gk8hQ4D+7EUxWqRTMVmKkxQse9Jt04E6lZqx7J22tw1DIR3sR+a8cY03VVDpcxb6e699Ki8R0BJYxjJgBEJfPHhvL2Br9bL.rJiqUxmgLyrS34zfUH5zDBgQznQ4ZoDBuliPmHZ.oTVRqQ5LVDzRHqHI3mj4LXjLW96G18GaaxhtfUItrlx07pkLmHhkRY2kZ+5qwOeU.JP3aAZqs1hDIRj1Xl2phhxtYluMoTdXl4CQDc.XkasaB.wfU1FTOKRLIrcu9kHhNCrrH+UAvYqyVkW1nqMbP3mj4Vmy.n6ytcurqPb0H7Hc0VUac9pEqxAVr1QRkJUVCCC2+LQDyp0pNO7Gxb..AQw0OcmkLbrUKr+7FM2byJZZZgYlalYtU1J6XBC6NsV494oc1qXB.c1JMUmSJkYz000ykKmS6cspvZNBcazuaC1ylZ02IyACjWJOB.1kcLy2Ea00npobMuVHy8ZeesjWtRWNthu56361uutCKSTgBeaEIczHhNKy7qBKx7yvLeo74yOZ974STGsJed3U2HrdPlC.LU1qVytIz9ljjLylgCG108keE+7R0g0VMac9pQqxokzSBRkJkmwggZ6W04Y9FYtCDL8XkwdrhQ+82OENbXk.ABDPHDQHhZgrxRl.rcVxTN6mBNWwD.4HhRSV0E9zACFLW5zoMAJqZOQQwZUBcWcu3Q5ZivuIyYlQVMidYl2M.tErP0Eqpy0behL+XUywdsBJzE6abiaLrllVTUU0MIkxtIhN.aUzebt.1tAvVIhZqfS1p4VcpGkt0KRVkt0SQD8RLymQHDCXXXb83wiWXdkWuI.bMF5aL5t8cxb6ySLHhj1nrd+474oCIti0J.HumUHNevc6.t5x8UkVmuJ0p7Ecis.XvYlYlejm6fP8ZUe28Yxb.Bj.0kbROZznTpToHoTNeOLGV2fjJQTkFCcmei4TJgmSJkYxmOutcOAnp+s0ZQUt6HLtmrTiezt1H9J9LYNCFozL14r4z2SqgC3Pl2DUk4Z9RHyy.ezxbGLU1wqjkjqXknJwwEI2xMMM6fHZaRo7VHh5grpJeairKWkvxEXtVtJqDTAkt0AIhFUHDSonnjJXvf45pqtL5pqtVt5.WtRnGRsE.32j4.im9r5at48JgUSWQw1JxRcANmZhNCq3HJgUIUUG.ZpppFppptlyZ9kE5ESPbqFU1NuJPA6Nvi5rvXDQCpooMftt9tBDHfqJNjh+3fG6i59ArBIycfop16G.+otuyqb3jxZ10ccE.3TCiqXAwAqe+a.KwzlmHRSUU0PSSy10xUGVSRnCOyE839NYty7N4nINvaYWapETCwM2gjfY1vgLmYdH.bdhnyTgj4cWpiyTY7OBcrLVk3J7hX6d26NfllVSACFrMSSyMaqagcg5bcXuZJRLABDXlLYxjwoFrikwK7a6cfRNdqMsEemLmY.SodJ.jkHJBybHxpSpIHhbRomENJVKPS6e2a3XgGrsRoolZJD.5zs2m0YAw4bQ1rvplsuHqy000yUPW8ptCdwB.MnttdDcc839QMXuRQkzSBzzz9aBDHvmz0cXzeV.2HzqRxb6wdLTGHzK3fQXw0g8pANedJkRoohhhzvvfykKWM8aq0jD5jGULtngBfNiEAiLaZekLmYFWclzaFVgpnlpQ61DE4XlmgrZWlNj4mqRrLuTeF.32hhiGvG2Yk9nTF4VNrzwP8tNruTWrOSwt3kiU4gBEJE.xkHQBi95qOIVAhwpaHVSaF.9KYN.vDourN.t.ybbX4gjHDQK0UjLybgjA4XlyRDkkYdNhnYYlSzbyMuOudeTuDDmiGyfk04oYlmjHZTX0m5W1sNuXdmhcoxGhUFqxK5M1N1Xichcsqc8wEhaPN6K.QLKEuO6e6MNVsQlCgfND+Za8PzsMhu5Uw5PQkwwZbl4ZOk0.ViRnaiWBtXc5d1TbL7ry4qj4LCblIlIJrrxnVhatIrqlX1VAbY.bNoTdAhngPYRlaeQzRBesruxzf92NqH69R3ZQoT1NryrfBcwNa0I6VTeZdcTQhoZW68KDh9J039MYNyLxZNSNl4S.fNru4pVAPyjUCCRXaEiCYoFa0ComCVjBofkUdSSDMcjHQdit89qdIHth3wroIhFkYdHl4wLMMmwvvXYw57xv6T6z9bfUUVkuzarE.ec.7a419mh8KAdoD50HY97qcKqz8MB85PQkotf0rD5Bg33vkJF2Q1wlv2+7WyWIyYv3LWeVUhHpVhaNrsB..SxLODQzEIhtH.FhYdpvgCWtwL+FZqq0Kv0whJiatVjJdqN0Q0tg35PcXGVW7JKybBhnwsCGxfLyWdsjU4KE6XCGDCNksdR8AxbF.Y0S1BQzOjYdCLysaSpGEVhFRw1hFFVh.JOrhM8L.HIrtYoTLyIYlSpnnrC2V+0SAwY+8dNXQXMF.FhHZXl4IWtpY6ki2onkoJeHPs0SBfUcU2UBcDYgJGm0G.NCTaj41uziBfOlqG+xGTvfAIMMMUgPLeQkAV7mUKotuWk3.VCSnCOt6q8ZGGc+jLGr0++JiNs3fas8ZRDb1VkLLy7Uf0IGCmOe9oiGOd5t5pqxU.btZgtuVk3pSEUFubsHu70pSKrPOjlYNA.F11BjKQDM.y7Pq1rJeIX.2FzOsL2wZeSXrEl4WG.s.KKEiREzzabNjED9hrvhTOMybVSSyrACFLWGczwFEBQTWW+0AAwUvMYqwLOG.tNQzUYlG..inppNSlLYpqVmWodmZ0pU4K4FaOkoo4KIDBWM5fZ6wAe8mvWIyA.Df5V+U2VeAt8g62i2xkCnjISpzZqsFvzzrVKpL.KDBJesJwArFlPmHpeGR5hgitiMUWHyYv3Uu9rzA2Z6k8ZsXhfyNt4WjH5hLyCIDhIEBQ5KcoKoWtJiVJkGxqxjoeAUC0A7y8WE3ZwcBfNYlW5Ew7kzQCn3VhPDML.tLy7EHhtL.FVQQY0tU4tFVjMEc23pS9R9FYNa+5u5j+8YOzl+4mFVVtDlYNnTJUKnmnyr0WXFDQZ.He1rY0DBgdvfAMlc1YM10t1kqtaG.0KAw438fb1dNXD.L.QzUsu4s4LLLzPElgIkKpBuS46B.En9zo.EBwmC.eMWOvs7P.i+D1+i+PlC6TBWX4189c836A3kTTYDBQyXgvJUwEUFr.YdQqRbCLv.0zuwVqlG5.vJlgtM9d1bbemLmYFu7nSWwqUGW5wLOCrr76h.3bLyWVHDionnjJWtb46qu9pjKbTRQm32sM0uz67aOfesuVhqECOyLyDakH2xwBVhrntiFsBWjXpWHTfV7cxb.fWcr96A.ISlL4zFFFiqnnLrll1P555CoqqeUcc8gzzzFRQQYXCCiwmc1YmJb3vyjKWtTCO7vYN5QOZNhnayq0ueKHtkjlZNg.aX6avdrPgBMK.xYmwB9NJv6TqXU9P.2KXRn15TfOimG7.cAD8gfeSlaME1WpZbNEUF.DrVJpL.02pDGvZXKzswwAPekZvi10lvYGaZekLmYFWZ5YK6EnGhf6h.XXcc8YHhbtvQk7EZIcmUV8zUvtwcv9TNnWstVD0gbK2CgucYhnAYlGRQQYbMMsDwiGO6ktzkzWEZU97vq5yPqNJc2GIyYFvTlMZO8ziNrHFo96ueJZzn2v2QSM0Tr8Erl+9J.rtHmoo48416s5jf3XdgzTaFhnQIKQoNptt9zLyYlXhI78PprZv6T.0GqxKDjU1H8zBg38615fZ4mEbpu8hewZjLGvtTv9Jc9nAtiQ89FKbAQiFkRmNsHPf.pvR2NgoBxjixkP295N.ETk3.vr.HcvfAyM6ryVSUINf03D5dUtKuyctI7W8idc3mj4LyXt753RSkD6tc2aWfkgH3tloo4TM2byY5ny2SeA..f.PRDEDUt6tqlpIVIig9TYF2+h3GW64f9pAWKVABeaPZksHwTWvhxEcehL257D4gHhdF64R80WettNJwmgtFqU+VPbkJM0rKhLSpnnjVHD5UnGy7DbEJ7Ml43EpIAe1E69Qrxc8yFgP72CuZZJs9KAb8m.vLo0+6Cj4NyU.wifxwSAtfvgCSpppBoTpRDEfrZBWpzMVqEJG3Dhm4qRblllYLLLp4pDGvZbBc3Q7Q16l2.7axbm48hCNtqD5KIt4NDGESDbYp.QvsH3lfSlzGqRbvxSHUM30fBeakrHwTCv0avMTfkTs37ExbqV9mCplOiruYNWE3oeJHN2RSMhnQMLLlwvvH6AO3AMfOcawt4cpXW++5CEYtS8dzCtEooZaMq0zdT0B1YS5gukvn9T4CqaVkuTPD8LtUyPlGs7P.y924qj41+4Q4SsyOFc3AqViRVjB2EBQX1p.JoBqPVupoJwArFmP21kNkTIkas0lQms1LFNwbvOIyYlwKMxT38cjd7Z84T7XR.fggkqbujsqbmpREAWgv9hfkDCM6k7OCzAUUmLrZv0hqCE9VIAQzLrKBEcyw1suSly.fX5X03R2yzuzuEDGsLllZkx6TwR8hGr0oele2fFW+NA.BoOh0FL62c9sMWj8i7MsejI5c5ZKesbvxkU4EAOC.bsNuRa3wAOye2Re0EdZUPlCPfHD2Tn+nvJM5pFTJEtGDUmB2cVgRhHSoTZHDBScccYsVk3.ViSnai9gKWP3N2wlwvIR4qj4VD5ktWPujF4QJaW5dEahiqnnnLtPHRVEhfqPzsaCl0GqRbrzrhig9pAWK5VEeiHZHl4ArsL+JLyCqookPHDoymOu1przQqrgTJc0ZnPAZA4zr9sgePl6x8OTIqYOyVC+RPbK2ooVw7NUnLuV2aZz+xe6v5C4onsBm40Q3LuNZcpuILBrQjKx9Q5X2WQqE8kBK2VkuTXq1c2Kb6g5cw4jtOPluvlQOBpBBc1+U3t8tkk1WSxPHDlLykciMxKrlVk6..Bgv0Nu1csyM66j4Ny4kF4F6TfE5NOr33leIgPbY.LrllVBSSypQDbEBWspYHer0ophxOk03hzhGCEJTagBEpShncyLe.X0Yntcl48Q1cEJrPanUE9TeK2IForkZRS.fQXluDs5n6nUuv.tM3lisa.3ij4L.STe03Z1UK78YAw4btYNhnDDQKJM0BDHfujlZEddPgs72McoOwmriA+i+1kCY9Rgp9DnkYedr4g9TXaW9ih3S8Mgp9DttM0QErW1fHZ.oT5oQAT7eImmsvKVqj4L.QTU2A17SEtCqe6UxTVKUpTMrPGdDG86ZmaotPlyLiW3JifCUj7Q29KrbvRAiiAfAIhFfHZj74ymHd73Y6pqtpoSTjRYb2rpwOqi6kaJqUJWK1P3aKqv0viX+KZ+iL2dapQ35MmxYFsV2+..HWfcTnP3lCV2r80.vPJJJiopp5KooVw7N0NF8S8uJX9q8QDPay9QwBUUeBz5j+2PqS9eCy058cCVsuRaU9RgPH95vqPqz5uDvD+IK7+9.YtCLExpxs69kB2AlWeIymxZ.XNl4LRoT2zzrlSYMf0AVnae2eCTpw2Z7VvVasEemLmYIN0Rb6dAtZWGVm7bcxNMnXluFQz7EOFT6EphRZUiuVg3Xt+xbdq34T6RrFIG.RZGevAXlOCQzKIDhSQD8ZlllWhHZjLYxjHQhDYrS6p05j4..t5wpc19A8cxbF.+1+kuo9plEKyb2Bgn9KHNFHWj84XcdF.LM.FgrRSsQz00mNWtbYFXfAp5aztXdmZ6i7G+1tkA+M9Vgye4Os.Zat1eibivwp8Me0OEBm40WUXUdQvS64LBzEP3dsdtORlCP.LdjxXMdCnPEtyLW0Jb246DXmxZvpZINKQzbACFLW5zoq4TVCX8gE5.dH5h6ZmaAWKQRekLmYFWXhDXrTYvVhFYoJmMMaI5pg.vUrcm23gBEJU97407oTgo6RMPF847mfaB.hcuKqwMD91ZR3mj40Xjl8TPbxIqw3myVBhqDBg6Z.XRhn4BDHPUmlZK06TMeoO2daNyI9Onfr+L01hu7Q3LuNBe0OExzz9Px1+4Mx07AxfUPqxKD1BX9YDBgqgZf1vGD7vknDrW8j4fA2WEsfs235fB2Mgk51y.fTRoLqllllejxZ.qCrPGX9F0RIwc08V7cxbmGmb3EhgEY0imcb09nLyC53ZWmpNkyc+5Cum6tTiMzr9WUhSxbIKmnbiJ91pNXWbYJI1Y6Gx2IyYFPBQeUy5UJkdSnWKVna+dIWvtXXKDNaOmcUXQrMhhhRBMMsb8zSOU04lE5cpNy9OzYOC8w9bwx7CNwxIYdgHR1yRa4Ze5faYvOYn.4Gdb3SVka6AhBeHJ3whFqXaucNo6NZ4gJwAu5IyArKxLmZ6UptEnjISNe7y4ZWg6ySnCfrLyYUUUy4WorFv5GKz62sAu6t6D0CxblY77W5Z3g1SWEyU6WksT19PJJJSM2bykNQhD9xc.yr62s4jYFu1+kwBn+hb7aTw2ViC+jLmAVbxnWYnjgNBvN945opt8bAeypGdmNUmqDvmpW6K06Ta67O9uOYl9CIH3dEmZYBgycgl11.+t2Y1HGH+za7w9mzCusyUMVk679DETE.CGNLELXPJPf.jttNqoow4xkiSkJE2We8wryESwhbi7y.ups6JwrJEro9eVvBn1HyW3kJ+hLCyL0e+8SaaaaS0vvHLr7pXb.zhiB24JSyOLyyKHtbLyYYlypqqqEIRDyolZJe45PqKHzIOxG8sYGG8qkHkuRlyLiSbsqC3tq1udnPgRopp5mUcptcavox3eEUFCXrH0otTWK1P3aq5fqpIdystaemLmY.PtSL6BbWPbUq04K4a2bQ1uF7QgvU34A2c5O4+Jwox7ukHYWqt5N1VnoLm4M04U9D2gdvN+8m9.et+KnLC0TguGau81URmNsZ2c2sZ5zoEACFTQSSSwvvfjRIGLXPSgPHau81MO6YOqYyM2rQxjIM6s2dMYlk.UPofM5CB1gP2uHyYBPxOJ.9.tcrKDQiFkzzzTUUUCCqtIXLhnlwR5jfkCJPPbZLyYAPJgPjwzzTKWtbl9gB2AVmPnai9gKWb3t6tSLThj9JYNyRjLedb7KOL22t297pZmYdPgPLH.7cWsC.HkxC5lB2O2jtpKpxFrjm4q+ye74UMcAtVb0PEeyo93mgYdZr9phuU0f7n3xDd9pEm+Ql634qJEb8pBwUj0hd3tmCEHDNl4Qp150ty4Ay8O9V+o2uwbOgBIu2UiD4EBgfiFRejOyVdoewGAAB+A59s+BWoLrJWLv.CDns1ZKT5zoaJPf.Qz00CGHPffRoLfPHTEBgB.LkRoghhhdlLYzCFLX9rYylE.YOwINQN.nezidTS6eW5cofM5CAfOl+RlC.gvxs6AN70JGqzoXwhIxkKW.hnlXliBKqzahrJ+qhREZgkhBZBPNZ3HEQzr.HkSMbuu95yWttz5hXnC3c7Yt6c0ouSlKsmy2+hCw7BwlaP.bEl4qIDholat4RWKJmsDnj23heZcNYasGWhbp0zzbGLy6CV4U9gAvc.f8wLuC.zAy772MqPHpG4V9LLyiXSheFXEevWE.m0IFgABDHUhDIxey.YtC7Jme2bq61WIysQeUwR0+EDWQ91Man8X.agvY6Am4EBWvfAKaOmszyCZ5Ve2+Sg12G7dEa4XfhsmJactBAhv8AsbmHyybWejRMGm2im3DmHT974awzzri.ABrCl48HkxaSJkGhY9HJJJGE.2ohhxQYlOhTJOjpp5sqqquOl4cQD0YrXw1P6s2dyCLv.A6u+9U.vyJkR2q7jJwJdrzqAx7E9eQ45IIJYxjJM0TSAsuNVLX6tc1tVYTl6mBWo2ff3xlMquIHNf0QVnSD0uoo4LkJEX9Y1+t.yeOemLmYFmbnwDzM1KkGuN3pcGT5Z3tOF+bIwGmKRN0tBUw2JoK1Kvx7qvqSp3a0Hb8BlgTawWIyY6W+i70NV7O2G33tew5BPYUg3pDKzKw2v5g6JGuftVF.1BgKSlL41+92eY44rhcdPW29iC.6xEly5cpS.dpSB4jmvWptc0CPBDWA3yl4admOBQ5efldmu7.NiwVwNVzVasERUUMpTJ6PJkakHZ6DQaC.sCK2OGRJkAHhDRozI29yyLmQHDyxLecgPLpoo4H555SDHPfYZqs1xbhSbBsCe3C+2CqdUdoWis8Ks3NvluPlC.FOJ.JgL5WzmAz1111T000aRHDwXlaCVj5MYqx8J85ZySniBDDG.7MAwArNxBcazeoFHV3fXec1tuSlyrDilJs3TCe8bbQ5kx9oq1ArbSoa4s64l7kc9gaM+PgB7xqFp3a.tma4z5yJ9VsfAbavsz5s56j4L.LfgmVbuDzmaCVQBhqTeCy.5A21LTUVQ3Jzp7kddPwlun8iBk873Hv87EQnG56A0C8jPrkx0nvkWHDnOHCbpr+2Ox6GXA2ru6cu6.Bgnk.ABrYgPragPzK.NBy7QYlOBQzgHhNn8492FQzsa++GF.GkY9NAvcQDcD.b610hhsFIRj1Zqs1hvL+bdt3h9fVVpC3ej4ffPPcm+T6zyem5D+bgPTz3mWtta24nyVmvbCBhqolZxzOpg6NXciE5.y618RlZB2+96Fmd3q6qj4NO+u4judrCs0MdMxpELlPSSqtzKkgWk70YuD7q6eHJE8Uaqs1BsRK7MtLxsb6Vd4MKBeyKTxTMDvJN59MYNyLHSprKulLyjTJOnqyobsN2Exb..sP6XTtJDBG6g.PMLLRnpp1VI2AAhBktdXnz0CCnmBlC8sf4U9q8sJeme.Rf3LDesLey67Ql8a+f+JWa6+IyAflBEJzFjR4NHh1G.1msW31L.hwV4hsSZaQX9eBvl123cVau00g80FZkYNloo4PRobrgFZnuyN1wNlUHDs55hK5CAjvogsT6j4NPHkOJbW7n9V7yAV9DDGvMQVnC.b+G3VpKj4RVhe3.CuEXU7FlpRiMWk.uxa2qNyEW3Bs0vCoDC9ada+QSrBWw2JqbKWQQYDMMsYVmUw2pZHDhAba7sD2tdt6ij4LCvDWVVnaewvc4KUHNOHyMnPl4ademmpvJBGuf.PKYkOzvvP26EnMBDEJ2x6AAeqOKBbOewUcVsSDdz.om5jcc4OwQgkEoaTHD6jYtGl4cyLuChnMSV0QhX1yoEaqVcddLl41Hh1H.1NQzsxLea.3v.3PDQ6iHpq74y2F.7zJcJ5C57LeiLGL.Y0rVb8P6WwOuHUHtEIHtzoS6aBhCXcFgN4QS.3.c1AhENnuSlyLiDYyE6q+idkXRobVCCiptHUTFv0qDLY5w8E2sqRAN8pDgu4YSUIXvfolXhIxcyjv27.C31fNVn6qj4.PBryxcAZXXbXulimBhyCxb..c0sLKWABgiq.AfJkxHd8dnXPz9QQf65oPv25yZY89pDHHZmAMF6+usOvu2uAybm1j36fHpShnMXetdHl4.Lyp1td14gp8MzGD.MwLGC.ajHZm.Xu.31Hh5UJk6VJkaQSS6644BJ1CBnzpuRlC.Pj3P7o1Y2E6Px1wOOVrXp555MAKOR3awOudJHNf0YD51vU0te+GXW9NYNKs96e0O4zu8.ABjIXvf9VuTdoPHD8Upw7qzUC.HtZGu7xcEeqv1NKY0qlmjrpnWmEKtRWcVEEkqpnnLYvfAS2UWcstqhuUiX.2Fry32puSlacIKpauVXNV9Bfi30bcUPbkAYNy.FMsiqfxrhvUnK123F2XXMMsntU4CYlC406A2.EoSndnmbUGwdHsg9Wu4K8DebE8Y6lYdiLysxLGFEbttKODrUJpFDVUUs1.Pm.XW.XODQ8HDhcb0qd0SHkxY8bwDy1JcehL2YaMMKs9M743m6bzqqUHNGrtiPWHDtligOPu6ttPlKYFimbtiQDke3gG1WuqKGXeAkRhqNyk7E2syLvcrg23n7pHgucSPSUw2.Qz.tMd3.KQk69.Yt0y8tLtB.5BW3BpDQt5oIWEDWYRlC.XDXSmgHZPuDB2RcwdvfAiaZZtU2D.ZlLY7krOedh8i8Mfn8i5G6xZFgyc46dyW4O3gBnMd6DQUjko1ygrsXOLrrtsC.rcXQruSl4sXZZ9c8bgD8A8cxb..Yoc6NEKVLgsB9aBVWqKJybS.H.UgMkE.vr0IP0cAwArNjPmH5kbq6q8fND59LYt07Qz2vS8UdH+LlHKA841fm85ubIduTYOHlxbWc7VaF.2Ay7AXqTSqSXc21ymRZ0pK1WpU4vpKXkfsJcqMxs7Z.dkK5aI9s5uj4LCPtKJNa2YJzzzBPDc6tN2RYcdEPlCFHSz6tehn4y5jkJDNObw9dYlucT5yCpnpElWfhsGD3d9hHvc8TfhTTQzurh.5iGcyW5e21Bm5LAqTuv4bsgBrVuEXEhtsCfagYdmYxj4G609gZ9mpv+yWHyY..I0WoNj9Y9mSDMeQvhsZYpoDBQF.36BhCXcHgtMJSqz8OxbGLaFseYTGrNG.PJktZUyUmweZJKaLzVGlWkI7s06MUk5.bMevWrU50NYty17q7EJdaT0wc1c2c2pae6aeuBgv05cdQIzqPxbSJ7T5g214KUAdpbbwtamGjLYRbsqcMLwDSfDIR.qhiVsCwVNFB9VeVnt2eUeY+UKPUlSr4A+zAaNwKTUmuuDR8nDQalszeS2iM1XWRJktmWhJw.E6AguRlyDDBDW+Guy9Vzl6ywOuvNvIVPPbyfEKHNe8ZXqKIzEBwW2swenaa20Exb..Iv6H7i+6ry5zas9J0.SldbLQ5w7E2seKszqIVkI7sF4VdECWsP2JN59KYNy.JBYorRmN8oOsJ.BGLXPO6BY2ff3pPxb..oR7SYZZNtpp5MTfmJWWrCf8VpyCLMMoLYxfDIRfIlXBLzPCgye9yiAGbPLwDSf74y60aSWgxddbD7s9rqJbC+FG9KSsOzWpp2d1RzbgAPqDQagrZsxayvv3E8biisT2tiZhLedHuQ2tWOheNQjSyiZN.jjHJcABhyWw5RBcub69Cca8TWHycfVd4i42umXlOjao4yUm4h0NSt8idheGQPCgusVGtJ3HKkt6uj4LyvTdi0IAGWsaXXDvvvHJQjmLTKRPbUAYNX.IE9kVZAdpJbw9VIhhWImGjOedjHQBL3fChqbkqfIlXBnqW9Y3VgfhzIBbOeQn16GGHPzpZe3Wn4DOO1zk9TPXloh1NmXpaagaD.rAl4NIh5Jc5zm1qsmbDFmC7CxbF.zM3185Q7ykvt5VBKuPlhYNqPHzSlLoDk9W2UEVWRnaiR518XMEpHj59CYN.ffburFVknO2F70u9K6K74APH4VizcLzP3aqogW8E8aYSGx2Iysun4hJVLE5p8VZoklkRY6JJJ851ZaQBhqJIyACX1zV9dEly41iVotXOJrbwdUcdfttNRjHAtxUtBt10tFRlLYkr4yCka48ff22Jun4BO2qiMco+8UEoNa02zCX6oiNXl675W+5iXZZNmqa77tcG9GYNHPDcnr+uVT5qQISlTQHDgXqdedqvJLAM4CwOeNXcS1oLMMyFLXPC+N94.qiIz8zs62dgD59GYN..HpakG6iWxJVW0.uhe9qO9K4KD58D6fRzP3aqGP4ECcejLmY.oUOidQ3Dm3DJ.Hb974akYdKABD3.ts1lO940.YNXfw25u9OxImysGslbwdsddvbyMGO5niZboKcobyLyLUr+3Wj05qfHP1AQmm4ih.YcsfDVLPDQp1pluU.rEhnsoqq6cQuuk2nuRl67bgPoOf48hD0VasEPUUMBa863MPVEQmvDQpUhWJKH945LyYric9zLyICFLXtjISZTOJ7XqaIz8xs6+r2dOHZSA8exbavLWxtYT0.gPTxaPHi1bXvouHXIWyO5N5dDbCguslGDQtFC8s11s56j4V6hEbioSbpUUUCpqq2hhhxlhFM5850Zmm870LYtIB7+RSSKmcJjh5oK18BK47fbFFFIGarwtxUtxUdwzoSegJc+obKuGD7XeiUTkvKLyfMcg+8UDotsU5Dr9bsYl4MvLuk4latK501ditcGnVIyA.D77oOIssssMESSyfLysPDEmYdCvxk6g4Jr+mCKxbmPKNGy7LDQSCKWtmqdD+bf0wD51njVo2ZSgwa612ScgLG.fHpu.O1GoRaVEEELytZs+qOt+3tclA1S7CRMD915C31MzB.zVyawWIycdsG6y9F519PPW3BWPMXvfgMMMaC.aMTnPd2xTKUWJqLIysVupOupppN.fcGRaYwE62v6EWZ4uZZZmbngF5O65W+5+Vlll+jJY+Rw1CBdeeiUzBRivLC1xq+uEMO0KTIaFA.Ehnv1VouwYlYFu6.OA2NPS1N1wmHysKoryes0jISpPDEFVj3avlTuE.DjVn10W1fHxjHxQc6SaSpOmhhhV8pVkrtlPWHDOsai+ydG6stPl6.IK7EqzkRoq0d3exP+fBdeT8O1a7ChHAZogv2V+fAbav3MuEemLmY.CUzMWPNmaeQwN.v1CEJz98ZQWzR9ZEQlS.j5IykKG2c2cq1TSM0zJgK1c47fyUn2oRjHw24Lm4LOrtt9GxydEdgHPTndnmDpG5Iq1koufMLvWprI0crR21KfQXliaXXzRtb4NkWaKMuZ28Gxbv.BBwy+h25g6u+9EwhESUSSKrsa12.a2JnIhpHOV5bSbrc5pwLmD.SSDMiggQlDIRnWupUIqqIzIqZ69wK03u86Xunq1ZstPlau.d+3w9HcWkK+BQetM3YF6k.KQM+XmQ2SMsHaH7sUcvS2tC3uj4L.fTzGrEBW3vgiDHPfM.fsxL2kpp5lbaMwy5d9mWVj4LP5f2xwAPfrYytR5h8Jpk+9hu3K9UEBwtkR4mqRNdJc8vH38sx5B9MLvWBsL9+yxc5DQjBaU5biRDsgxIzCTqO.7SxbmWiHbLmzUSQQwQc6sRD0BrDFbsjtZNpaeVhn4jRYd+t9sWHVWSnC3sU5u223AqOj41PgE0zsOyVoqV2kZ7Am9h35oF0WrPeesUcQHngv2VcBgP3Z.NaxoIs3ij41+sambNOe97sJkxsPD0EQz1CGNbKtsltg52dUPlyL8JI1yuSlfACFUHDab4xE6Ux4ADQmqDdmZZEEkOJ.dKdExjBA05dPvi8MfniUNUvGen+Jrgq7k8bdEjFaAHhZlYNdhDI7tmx1zArb8NfuQlaOdeq0SWMGrtmPG.+8t4Fqe4epCW2HyA..Qu+ZIV5RozU21e5Q8Gqy2a7Cg3gZuZVeNVizP3aq9fqVnu6sbX+mLmY.I51ImyUTTluxf0byM6o614Bc2dUPlCFfQfSqppFOb3vKqtXGUv4Ad0xeIh5WHDGVJkOcYuHBDEAtmuHTtk2S091nlQjIedrgK6Motsa2UXlCSDEyvvnEcc8g7Z6nVdi9MYN.vwVqmtZN3lAB8Y.vyVpA2Q6wwa+f6q9PlaCSV7YqgM2UAw0+E9e.ojq4G6eCU98bzP3aq5w.tMXSAZw2Iys9e9XN4bNQz1AvtXl2Y3vg2pWKXYQRYsJgLGLfQvs9xlll6b4zE6U54AkSK+kHZFEEkO..dmURr0UusONTObM4XvZBQl74wFtjmj5jsPylWU4Yxjwy3niVe.mM2eHyY.hn36y324srVNc0bvMCD5vzz7Oysw+Mdq2SciLGvRw6USdoyL+ntUc3lH0X3JSbgZNU0BIZB6u8xmPugv2Va.xitt111vs56j4R6m+cd8+eO.y7VXl2IY0Sr2RnPgZ10ErdpaHk0pTxbVBL6VeGiyL2qTJO7xoK1qWmGPD8L1Vq6pGWJDJc8vH3w9FqXUWtHS3No9Rb6dDl43oRkZJu1uTKuQ3mj4r8XJlydLdMb5p4faJHzewW7EeISSyePoF+916sfczd75BY97f4OKdrOhqcipkBoz8RH6ObfW.RIp4GGdy2CBqFobWSNtVrgv2VC.oT1uaius15w2IyYF35IG8MxLuSXYc91IhZOXvfAccs5Cj4RDdhrsc2ahH5v.3NPcpmDrzbKGVWvttcd.Qz.JJJGVJk+ok81XGWcp0ZSrqUKhb8mGscwRSp631c.DhHpk4latbFFFS55NUIls337Oxb..hzdy1Vk2NQTa7ZrzUyA2TPn2We8wRo7a31b928yc+0Oxb.qpGGqT19AiYta2JlL..euW+ezWJlLuos6Yuxngv2V6hAbav1ZYK9NYNy.yok7H.nal4cPDs4.ABzZnPgb8Bi7TmbgmWEj4fAxGYmiAfCyLeaDQ6F0odR.UhbKudedfhhxGC.efx0E7TjNQv64KtxRpegRRpS1BNKfs.zhpoo8JdtSa4M3qj4.DHSydssNuc1Jc0ZlVCktZNXcOgt8Gd7q7Juxegoo40J07de26cht6XC04EC9nkiq2YlIoT9QcaNWYxKfKe8K.oIWSONxVtGzV3Nbc8rDqxySDkDMD91ZE3pR229F5w2IyYFXtbI2usx12B.ZMTnPM40B0I+yqVxbHAxG+PRl48QDsC.rQ3i8jfJI2xqmmGPD8zBgn7UAefnH3w9FPYGqLEglHW+4Qamuzj5LypjUAcokzoSOrm6vnKoLvVij4fADBYzVx7OeGvxB8XNtamWijtZNXcOgtChEKlott9eray4IdzGvsg8Gv7WqT4ltsKnDISlbC.3861t46dl+QeQLb2+sT5ZVSIrJeZl4QXluXCgus5Gd0jV1PKaw2IyYlQprI1A.1J.1..hzTSM4YrHkyd9ZhLmk.Ya6NagHpS.zF74dR.7vE6KmmGX6R+JJt5pG9IW4H0G+4Qamawj5KoKr0D.hM0TSMhooYZ21WzMj9Z0FYt0XDBY7pGoFc2NyqPoqlCtYgPmGd3gMGYjQ9KjRYIKyfuu68tVFrRmhKXkmo0O7mns4Wb1D4.Pb5SeZ0HQx7bj84...H.jDQAQk7wEBQqtsa9Nu1yUyVmeu639QaMUbqycypb.bNzP3aqUv.tM3FZYK9NYtjARqkNVZs41L.ZgYNPyM2rqWqgm87f0VRGVqBIy0U2fgQSaoM.DCVBey25IAkiK1oRma40kyCrUAeEkZapG9IWwT.ejwedD+rKlTuf3nGjr563wLLLNqW6KJ5avWIyA.BoO39pV2sCrxltZN3lBBchHtu95iSjHgtggwetayc4vJchvAmKs12e6ermbCrcuY9BW3BAd4W9kC2QGcrcgP7a511+Oe5mCoxjplHyCIZBOXO2n2+KGqxIhNk8iFBeaUNHqpkXIi25d57v9NYty+ObhqrQXm5OgBEx0047k60pjLGR.sn6S52BeqRbwtW4Vd8B1o11Gqrm+Nd3UNR8wdAD+0WDo9MDG8rYy5cOROdAUMNefLGLP.yQ1Y05t8U5zUyA2TPnaCY3vgMRjHwmeE2Jc..BGbroS88e6+G+OsoMtwMFVJkQCDHPGwiG++KgPDysM8a9i9aqYqyeuG5ChlBrXksWgVketFBeaMCb0srVwQ2eIyYlwkm7rQAPvlZpIOuNibxSTSj4vDHW7dUPcpCogxvE6kStkWu.QzeJ.9.k67mmTeEHs1hL1Kf3mYwj5EFG8jIS5YUiih9FrdhOQlCPPgyGLf4Hsgp2c6qXoqlCtYhPG81auliM1XiaXX7Ucade0O36dYY8v.2w24LW4G+68+3EOFQz1hGO98npp99baad4AOIt3nmqlHyen89Nws24BkHxpvp7KpnnLR5zomtgv2VS.WIzuQ2tW6j4LCb4INWPlYklatYOuvnbBaEtWkj4rjP9V2u.qicwtWfH5oAvgKWEvqriGFAu2uHnUBR8QeAD+ze4hFG8LYx.CCiq35NPIFnlbJ7f0NYtyq2j1q1Vs3tchHG0sOEQTBZYJc0bvMMD5NpcWUUU+RW5ReJSSyQJ0bO191MdjibaKKqKIya+Yesy8sdjuxe2eFBF5eihhhqID9W+3eYXZxU8i6dG2KdaG3ctvwuJsJWQQIYhDIx2P3aq9gPHdY2Fe6s2iuSlKYfQl8pB.PQh3dMNfm87f0SUSj4lA6.bjMcSgK1cC1hkqrU.O05dVwH0aZjW.wesubQiitttdQ5ROKFTa1tc2mHyASHn9fMUitaOMQzLDQSwLOihhR5kizUyA2zPnaCt2d60TSSKmggwehaS7q9Ae2HdDOyzFeCSjN2aVGjq2EwKMvIvIuzIfoAWUOdC67Mi22c+qAfFVkeSFb0B8tZ+V8cxblYjIeFLZxgnlZx8yijSbhZhLGl.YqwlRxZMWr6FpTEvuhRpO7KfM7Z+4hkFG8ToR85dtwyKLN3Kj4L.BpcF+vc6I.vTLyIKvc6KK+13lJB8BsR+xW9xOsoo4OoTyMdjlV1b8NfkX71oGwt++x+7WBRSYU83gused79eiKPliFVkeSCHhbmPuid7cxbmmOYlw7b8Me7yqRxb1DPKtm88kRe7Wi5hc2.QzL1VpW9j5u4UNR8Xu7WVsv3nmHQBO+gyhiidsSlCFHrwUUvZT2sCbSFgtMl2J84lateO2l3ibjaCO18dW08Ezicu2E9sdf6y04bpK+SvIt3OohsJusvcfemG32C+bG7+sFVkeSLbqDv1QzNQSAa12IyYlwUl1y1bMjW+j0DYNaBnsgJmPe8fK1cCEPp+zk07WAI0ad3e.EYnmOL.BCq5nd774y+C8Z6rH08GxbmWOTtWqr4EWM4tcfaBIzKzJ8QFYjertt9ekay+q9Ae23f6vylDUUiCtishOy6szE2EG7G927jUr32djC8KfO4i9Gg8skCzvp7FvC2tuGemLmY.gv85ICOic9mWKj4sseHCTd8h.GTN8jf0JtX2MP1crs0Bj5wekuZvlFnemNgWTMMMuiidr2n0S7Ixb.BA0GnRV1qZb2NvMgD51XdqzmbxI+zllltllDe2OwudcgT+f6Xq369I908LV8e0uyWBilnjZ36Fv8tmigOy69yiG8H+BHrZSMrJuAfPHNtaiu2scXemLWx.2wNcO11NwOuZIygIPtMU9wOuR5IAqkbwtWnhI0uuUFR8Ve4uVrHW5eZqDQMM2bycIO2fn2suRlCFnIyAVS5tcfaRIzsOYTZXXnkMa1QxlM6usayOdjl7cR8xkL+BibN7m+O8E8b+EIXyySj+3G6WGcDciMrJuAJDtZg9N5nGemLmYf6Y+Gy0Ek4vGulHyYCB46r7HzWhv2xCqRyYI6IAq0bwtWXsBodrW4aryHu9ydfjISNoWFaQwdC9JYN.PPsAJq04pM2sCbSJgtCN5QOpoooYtAGbvuslllq8LcGR8isucWyG2eqG39JKx74xlB+g+sOoqyIRvlw67n+h3y7d9yVDQtTJkMrJuAb.YUw3FnTiuSagw4mj42xl6AsD1cBAyBhed0PlaFpCXFw8lKDPQE9VB.LBy7knRzSBVK5hcuPkTU4VII0ib1u0QCc0e7dLMM8r6qMu337AxbqTWafxcYxLylDQ4gUVQLMVAc2NvMwD5NwRumd5wn4laNyEtvE98MMM+QtsMNj5+Iu2GopRost6XCUz1+m9rOEtvHmqni0QzMNOQ9idjeADIXyE5NQoS52zvp7Fn.TRqz6HVmn8nc5aj4Ly3f65NccwXN7wqIxb1.HmGVm6gv2NKtIrmDPUPUkihuxPpqXlOPrezW5WK+E+Wz7ZtTq2M7Kxbm+FNu6UeV6eS438SmR85jjc0gakvc6..pKmGrUafHhYlkc2c25CLv.YlbxIeOczQGeKEEEWkL6u0Cbe38cu2E9+4e5EvewO3GiAlbZWONOxQtM7HG41v6qBTL+y8SdV7b+jm8Fd8NhtQ7NOxuHt28rXWYVf6DcrJOG.lCVVlOl8EvtBrZVGWyzz75gBEZ14latzppp581auFc2c2MHxWGC63nWx126N5nGL9Li3Kj4RF3fc6NYagD5UCYNj.410atj6+kbNQd.jw1JpgYluhcLyGfYdHSSyqGHPfYxjISFCCCs0SVkWLPD8zLy..eMOma78ffG6KBsi+gVnA5rL.gTOj749CeGxs9W.Q7NK85K1a.f+7V+iOPlC1xs64B0qWKQmFwRRhnIIhFG.SsR4tcfaxIzAtAR8Qzzz9vgBE5Y8pdpGORS3IdzG.Owi9.XlLYwKe0QvfSNMFXxD..n6NZC6riMTUtn+49IOK9TKwU6kAQtjY1..4XlmiHJA.lD.i.fgXlGfHZPhnwDBwTgBEJE.xkHQBi95qOIVGewqFXdzuaCt+seD7itvw8ExbVBbuGnOWWLxwOQMQlaDeGvH9NJ9911SULyFLy4fU7xmjHZX.bYl4KPDcY.LrhhxMkmOTMj546+CAnOW8ewYCNWJn8JOGBeeevRu1hc21S1eHyY3cbzsCeiAybVhnYXlGmYdbgPLiooY1vgCa+qzkWbSOgNvMPp+C27l27OW4Pp6f3QZxl3t1iu9RIyKChb1lHWmHJCrZYeWGVwG7ZDQCQDcM.LRCqxu4FDQujoo4LBgHdwF+.a+H9FY9a5.GqXGh4gLw4AO2nUMYN.Pl87f239057BXaUtNQTVl4DDQiyLOTAVleEl4g0zzRHDhz4ymW6lwyGpXR899hPq+O7xpk5FCbR.2KSGVhia1ejuPlClfpwDk7X43tclYchnzLySY+6qIYlSJkx781auKKMikkhaZig9Rgix26t6t0Ge7w+g4ym+cHkxjKmqgBIy6H5Fwierec7Yd2e9EQlWff2lON4vx5iofkqDunsHeNI.NAy7KwLeVgPLXiXk2..3YJ0.cuodPSgZolIykLiC4U7yu1wqIxbNPDje6K1k9US4aMd73ImXhIxcy74CjUScorhotH9dPv99BKqwT2XvS54bnl2uuQlC.DN6Yb6vMetmCqq8NM.lTHDyDHPfLACFTGqP+VpgE5EfkXo9OJd73GKZzn+W8Jl59A9Se1mB+suv2.6n8twCdauMWsHGVwtwofXjF.yvLOIQznXA2qeUEEkwz00mlHZtLYxjyI1f2rYERCr.rii96uTiefseD7CO+wqIxblAdyd3tcygNdUSlC.jcWuYvETLYpDWrKDhIUTTRELXvbc0UWFc0UWqqD8V0fJwRcQ78ffuku.z9dKeVpaL3Ig5NORIGmhc2.C+W3Kj4NulpwDvPci23wZgqAWXtmOMybJhn7CO7vl8zSOqH+dpAg9RPgj5W3BW30YlenXwh8TJJJ+h0ii2EF4b3O7u8IgBqf+ue3mD6qyCrnwciHms54tSQDMFQznLyCYeArQLMMutpp5r1oni1AO3AMg8kDuY+hW2ji9cavd65H3e4bGulHy2cm6AaosRWyF3ziB4zmupIyA.xZ6t8J0E6pppSmKWtL4xkK+5cguUofH5oMMMOnPH9ndMWQ78f.G9iAse3evxwRyaB8VuaekLGfJJgdgtaG.osU29JZtmWHZPnWD3Pp2SO8nehSbhQUUU+.6YO64aELXvOshhx17iiwnIFA+08+WhQmbT7gtu+OQGQuwe3.uIxGmHZDl4ggULyGiYdRUU0YBEJzb.H2DSLwMMh7oA7FDQCXZZ9RBg3PEa76tmig+7uyeRUSlKYf21QeGttFLu5wqIx7b65MCyl6nrTwN.tBy7PJJJiqookHRjHYGZngzabNQwghhxGyzzLtPHd+dN2c8vHH.z9Wp+j5dFGc0nfBuMvYGwWHyAa418bgWrAV.Kj64LyoXlm1tXxrhk64EhFD5k.1j53nG8nl82e+4Ge7w+6Zs0VOdjHQd+ppp+pJJJUUYi6BibNbggNOFahwvOcOO.hz674OtyTbxuQm3znyLmyV7EyVBh7wAvT1BdJcC2q2.df9APQIz2Tqcht2zdvkF67UEYNyLdy89Vb8fqel+5plLmCDAoN7ubCWrWGghhxGvzzDqlH0Km3nil2O3ri3Kj4fInpuXgw4XcNrLtJis51mzwc6JJJZW8pWcEyc6.MHzcE1e4wrUvkjm3DmXDUU0mJXvfe9cric7NUUU6SQQ4MnppdqtsexmOuLe977byMGizBd2w2Cs636gXlIl4BIbk1GKSaETlGVU4sYAvzE3Z8hRjaXXjSUUUug60a.2fPH95.njtUs2cbDbwQOWUQleqctWzoKtaWN84gL0nUEYN.PpdeT1TIbCWrWmQESpy.4WFH0c2s62EvDeW3Gj4..p5SVrCyptbOuPzfPuLPAVqa..4oO8o0u3Eu3ecvfA+uKkxlUUUi2TSMsyHQhbWlllsaZZtQ.rg74yGJe97g.PTxpCBEB.AXq99qBQDg4kFDLAfIsPclNisHKlgHZBhnwJSh7BcUeCz.2.rSesADBQ2Ea725c7v3Y9W9qqXxblAd62o6ta23heqplLWeS6CY54AZ3h8kITQj52xCC0wOILt72ptsd7jPu48C+hLGLgPYVrR2Wsl64EhFD5kIbtP.yrr2d6kAf4oO8o0MLLxIDhzoRkZlrYyNHyb6BgXyRoby.XK.nChnMvL2JQTKLyMQDEF.AAfBr9AfVAOxwL63NmDLySBfwrs.oAQdC3W3YPIrR+V17dvFasSLVhQpHxb.f29c9y45A037OWUQlyAhfDuoOhIrtfZCWruLAaR8CUJMWTHB9S8D..v3R0GRcywtfqiSwuKeiLmsecgLCjhHqpy87BQCB8JDE3FdpXD6RobFXkShivLuA6GsCfMvL2J.hxL2BQTDaK0ctiuL.Hq8ySx18UWhnoIhlVJkILMMmsAQdC3GvK2t+ybvGF+ke+ubESl2RSkN+jMtv2Bb1TUEY9z88IL4.QzHqyQZ3h8kQHDh2hTJ+9kMoNa6IFeFkU9n2x9Am5rV+SMRlCFHXtAQtH6Gn.wvgEp6GSJDhYTUUynnnrhk64EhFD5UI7hXmHJgTJGG.s.KWt2J.h57fYtE.D..FDQyAf4XlyxLmEV4VdRXUXLlSHDoYly1fHuA7K3ka2u+C9NvW+68kKaxb.f20a9855wT+bOWURl+6ZXz1NygFtXeEA1dKr7I0umm.7biByQOgutN3bof43W.JatmRuVadeVD59.YNXBBY5aPLb.HAr7NzTRoL4JctmWHZPnWinTD6ISlLaas0VJSSyfDQg0zzBqnnzDQTSRoLhPHZRJkpDQlRoLCybVUU07555ZABDHusaEyqnnnkHQB8vgCazfHuA7SHDhOG.9rEarMGuSb+G5gw29j+CkEY9Q18chd15dK4wxbzSBygOYEQlq0ZWbp69w00iuirf4FtXeEDEPpepRcSfEhf88Gi7e6OLLm57955vbry6NgdK602HyA.Bl+p.QNhiPkyAfYIhl..igUQhgyAMJ8q9DrS0LI.j81au5G8nGM+Uu5USCfjyN6rSEHPfwMLLtV974GPQQ4B.3rRo70AvqqppdQCCiqXXXb0HQhLrggw3ISlbZ.j7pW8poO5QOZ9d6sWc.3TxWWw+gSCrt.OsaC99dK+pkEYN.vux8+q45Ax3reqJhLetdteYh2x+l7Fssy4vBs6zywL+pvpUmdFl4KonnLhll1LIRjHSO8ziy4HMN+nN.hnYDBw6zNrhtO2fQQnG7K.wF1iutF7xs6Tz8Y8DefLG.fLS6XzlNQTF6PfNlPHFWJkILLLVUHFNGzvBceFEbwDSlYBVeQq2e+8KhFMJEKVLQxjIUBGNrPQQgz004b4xIiEKlollFOv.CH6qu9XX+Sud5omUE24WCr9CDQyXZZ90EBwiUrw2R7shG7PuC7Odhm0Ux76q22BNxtKcsamSMJze8mqrHy02z9PxC9dLLZq6FtXeUHHqZgui62KZS9Y94FLJB+S+eDY+6+eGbN+oDw5ov3ZYe9FYN.Pv7CBXWlWgU5CONy7vLyiaZZNqggQNaOmtp.MHzqivwc7.V9j24kgUrXJ7WN7R9ai7GuAVVfPH9C.PQIzA.9Me3eab7S+8QxLoJJYdKMEE+duqOoqGi7+3uhmj4lM2ARdn2qL+VOhUEQrgK1W0BGRc.bJOmaKchv+reAj649vfyW6j5liedv4lCT3VJ9DTiBJ7VgL6H0LYNfUgAAKjpZIfEg9XBgXZagLupPLbNngK2WlfS0ey1k4N0IKIVvM5xBlyphebz.2TfAjR4eUoFrkvQwm9+iOSIIy+O+g9Jtprc4jmG5m94bsqokt22Il7s+YLz11QySDkFMbw9pdPD8Rnb6PaaXOH7a6K.Dze5Pali6Qb4CuMegLG.HR1yRElpZ.XLl4IjR4rFFF4rSUsUM+9qAg9JDZPd2.qzvNjPTlLY9ibadG9VtS74+09JKpBv0YaaE+m+PeEWEBG.Ptm+yVRx7b65Miq+veF4b89nZvxklIYOZ2oACFL0DSLQtFoj1JOnJosq19dPn66I7kiqmwQus6x5I0HY976uhjpZqzsI0RgFtbuAZfahQ+82O0c2cObnPgdl.AB7nkZdGY22I9l+adNbxK8SPzlh5IQN.fwkONLt5IuAxbi36.IO36k0279MYlMnE5c4S0vE6qs.Y0g15VHDOoWyUs6igv88DH22u1JQrdFG8va02HyA.Hy4xwJsrpMU0JDMHzafF3lXDMZTJUpTzHiLxSs8su8GPQQIhay2MwuUH37oP1u8e3hHyY0HH0AdTtfx2pFrxq2YXluNQzPLyCznPwr1BJJJ+9lll6rbJQrp64siP4Sg7+fhlsjkE7xk6TSa02HyA.Bk6h54Z9PqZSUsBQCWt2.MvM4PHDT974ma1Ym8q5W6yr+C+qAmI07j4467n35usmhytmGTBqNHXF6pg3HLyWhH50.voZ3h80lPQQ4CHkxmtblafa+ci.68sW0GK4LiBN2bkbbJ5dgeQlC.HXyjqlSUsBQCKzafFnA..nqe8qepPgBcwlatYW6dfdgbG+yBiAOIXCBlg5.y7S8AYsMsuR1gz.vfLyWlHZPhnQEBwTMbw9ZOHDhOlTJKq59dne5m.LCnelmqpNVlie9R2nVTiZ8PylzuFHys1d8oWMmpZEhFVn2.MPCLOFarw9g4xkKa0t85m44f1O4uARpYj519kw0enmh01z9XhHqzQqHBeSHDmhH50LMMuDQzHYxjIQCUru1C1EdleZoT9xky7C+VeBnrsR28zbCdILNQK1Z7nVIyAPf7W0PJkiRDMkPHRqpptpSLbNnAgdCz.M.f8k6LLLxesqcsKjMaViJcGj+e4OGo+meJLWO+7X76+o34188uzXkmfYdT6XjeFXkNZuJ.NqhhxUiDIxDABDHUhDIZDu70tXlzoS+yHkxqVNSto29eLDcT4USN4Li59DBD0WHyA.Bl6ZDQzXlllypoospKU0JDMHzafF3lbHkRlY1g70vvvH+vCO7Ly7+e6c2EZikddG.++y48bzGV1x1iGud75YbbXh2rIhr6EKsWzBAAMzBcfzdQogTHogvRuI4hV5cklBkRf.8l.srMWTnzPg1aZIMPKzucglVxEdW7Ed6NqyLqGaKa4wVV1R5HKcNm22mdgNZhmodF4cWOeH6++.cikN5HCB8mm2y6444vCOSWiPWicPqevuKNbi2C097eaz3U9UTMXj9Uk2UDoA.1SUcCQj26Qu2x61s6Nc61sdXXX6EVXgnxkKaYKNd3jHhN1XicPmNc9RNmqw.e8YGCi7q8VvL8GtP8AEnKi8pmKg4..hqSSQjZhHsdQt5b.FnSzkZMa1TKTnfqe3qpZaQjiSRR5t6t61YiM1vc7wm9Jvaq71H7G8mgp+WeeTcwuBp+ZuoFm6JtGop7CTU2VU8m7313aSLwDM1au85TpToD7B7OVRmcUpT4cZ2t8up0ZGX6gSxNFx8K8sfj8r23YF3nT0eTbdDlC.345zZXn5b.to3H5RsxkKqqt5p1ffft.ngHxAo8O8oAP91saat28tWPPPfjMaVIe97vt8ainC1.wiNOhm9W.tobOXB.pplfzAYA.NJ85kuE5cMy+.tw2tTPqToh0XLu8Uu5U+lEKV7ubPGfY5WAi7q+VH7u9a.83yVKh0c3NvahYO0mSJ9oOWByA.DDd7vP04.rBchtzp+rFnPgBIwwwsSCyq.fJo6.8CEQNF.QIII1VsZ41au8zCBtg1ZledsaganNmyIhXEQRPZChA85nVU5WUtHx6j9fa7sKADQzxkKq0qWOdyM2bolMa9GeVNNyK8JnvW9sNymG2QC35neNDlC.XrQcFFpNGfA5DcYmVqVMa974OVDolp5V8mpY.nB.1G8Bo6.fHQjXQjjzGwn2Rq2QUsQ5qcaU06.f2E.qnp9N.XEQjayM91kJZwhEsNmq6N6rye6gGd32+rbPlWZQj+VeqyzI3I0w37Jd9M1Vsdi9eLLTcN.WxchtTKcYxsqu95ciiiOB.aCf7.HC503L5.foUUGWDImpZfHh.zaBBJhDqp1A.M.vAhHUEQ1QUcyz1351Vq89Yyl8nVsZE566GWpTojEVXgW3+wQ5iEsQiFtb4xEqpd7t6t6+B.9rSLwDCrUCl4ycK.En8e+ezS9D7jldaAmOCBldh2aXn5b.FnSDAnKrvBwKu7xsykK29FiwXsVqwXBUUOPD4kAvUAvXhHYQ5J6kN0.6JhzeTmta5R1uspZUU08888OLa1rs.Pm50qmv4V9kGMa1TKVrXRbb7wFioY0pU+W877lqXwhm9E99Dx7Zog5+vGen9f5o6mGT0ayMuw2Y4RCIemkA5DcIWZU5tlMaF4662z4bZ1rYiPupt2KcY3mF.iCfb.vjdnVzqB9iTU2SD49pp6BfZVq8POOuv1sa2IIII5Mdi2vxpxu7n+2oVd4kSFe7w6jjjz..GryN67eCfuPwhEGePuGYd8aA6tqgt+3+lS840NO4MOmLxrPaOfqy9.X8x7mNrTcN.CzIhvO8GfWZok5dyadSWiFMhylMaq333C777p3btI777J.fLhHd..ppN.D4btPiwbjy4NzZsG444Eljjzw22ONsEY55eNdN9uH8bPwhEs8ujLoa5x5au81uup5ma7wGO2fN97+h+1P6zDQq7guEwJ4e4OVA5VX9Qq+I+de2gkpyAXfNQTJQDmppB.c0UW0FFF1022OzXL0CBBxqplw4b9.n+1GV877RLFSjy4N1ZsGmjjz8DA4O31Y641+TzySZkJUryO+7QVqsUZf99hHGVsZ0pppWehIlXfYPi7E6sI4dzP8AtK2+Xvgr+SsuxO2WeXp5b.FnSDcB8qTuToRJ.rqt5pw4ym+3vvP+LYx30oSGOOOOAnWGlqPgBtnnHW5s9lkA4TeoeWRWd4kiKVrXnpZMzaDjtmp5KUsZ0QylM6T4ymef2eYmVn9.a+qeDEYl9Oo1m8s9CpUqV3UGxtkJYfNQzCo+8mtppTpTIG.R.PzRKsjL1Xi8P+3asZ0zxkKqHMD+DGOQ..tb4xkjjjbrHRcOOucQuP8YAvDas0Vib8qe87m0PcuIlEc9O+yA.d7SasOpePkr6c7n+L+d0uw27GZ.5OxdGpv.chnS0IBlUUUob4xmkWKQOjRkJYWYkU5366eD.1M81YbVU0obN2nas0V9yO+7YxlM6.eux84eS3M9r33+4u6isKw8QQmreh+mCl4q8GZK7puaXqVg0qWen7VqjA5DQCzv1OrQuXn+xt666G644EJhTy4b6XLlc.v0.v3NmK2FargY1Ym0L5niNv2yLu9sPlW+VmKe9rR13lEK+CNbluxeg0Zu6H99M888iKWt7P0Rs2G6TbDQD8zjVpTIaTTTGq0djHR0z9UPUU0i.PGmyY2ZqsbMZLvAz1Y+jF+jus1hClowdy9M9qN5Ze0+NQjcxlM6Q.3ACInysOHOCwJzIhH5olSVktHRqSqJc.jSDwr81aq.PJVr3G6yq138erOWXg239G7R+l+CI9S9iEU2zXL0ZMDuT68wJzIhH5osmXU5ppGmNo9zpUqhZ0p8T4CQhjW2e5u581atem+cavUdOQj6Ys166OjuT68wJXnOP4...T.AIQTPT0IhH5opSqJcQjsAvNppyHhTDocgPmyI0pUShiiw0t109Hc9b0V9+2eqav0Spcs2byn7epUUUWOcT9V8hvRs2GqPmHhnmEdPU5IIIG5btpppahdCDnC.PH.hEQbNmSaznAt28tGbN2G9SzQO7xs2X7uPmp232+Chx+oVC.2QD4mjN.g1uUqVgqu95I3BPuSfUnSDQzScO5NdWUce.zeNALgpZdzaNAHhHANmyqa2txcu6cwbyMGxmO+Y9b0uBcm2HX+YdylsG6mcG.rgp5ZhH2VU8tdddUMFSyjjjng8kZuuymI.OQDQz.npJ.vakUVIW974mvZsyKh7YDQdM.7Y.vmPUcJQjB.HPU0C.hmmmL4jSholZJ348jWXYs8NH5e6Kh149ztZy9acjMXl6CfMUUusHx6Bfaas1MTUqkISlvEWbwghYc9YAqPmHhnmI52ZgSRRh788aAfccNWNU0LhH8mheNzaR9U..AhH98ut5sZ0RlZpovSZWvG8+98vAW82naiq7Kenp5ARuv70DQdWQj22ZsappVqPgBsWXgEtPrT68wJzIhH5Ylzpzk0VasfnnnBhHSYLl4UUWTD4UAvMAvKCfqnpNpHRNU0fz.eQUUBBBjomdZYzQG8gpXu4c9Gs6d7nMrAybD5cc42F.2A.2F.uuy41D.0xmOe3BKrPLFx5U6CBCzIhH5Yp9K895qudPXX3HhHS444cc.7IEQtop57nWn9ThHiCfQTUyJhDnp5cxQ3aPPfFDD3bNW2tc61HsY0TC.aKhrgp5c.vG3btsNQk4W3ByAXfNQDQOG7ng5AAASXs1YDQlSD45.35n2PbYZU0I.vXhHi.fLppF..QDK.hTUaCflhHGBf8.vN.XKU0sTUqXLlciiiO7hbXN.CzIhH54j9g5qs1Z9FiIWRRxnVqcRQjqJhLip50PutI2UEQlD85pbE.PP5aQL5c6tcjpZc.rO.pl13Z1UUceiwT222uk0Z6r3hKlfKng4.LPmHhnmi5eM0Wd4kM999YxjISNmyUvXLi644Mop5UTUuB5s76SBfQAP+QyVW.zJMLulHxAhHG3bt5Vq8HOOuvz668nzwg5ElM.2ogA5DQD8bUZnN.f2pqtpIIIIHSlL4788yas1BnWH9X3mtr6OnB89K2d5iVFiILII43nnnN999wkJUxhd6b9K7SMPFnSDQzKD5WsN.jUWcUSmNc7mbxICrVaF.jMcGumwZsF..iwXEQhTU6.ftFiIpd85w4xkKIMHWwE7pxOIFnSDQzKTNYE6KszRxbyMmoQiFlBEJXxjIiWXXnG.PgBEbQQQtvvPawhEsUpTwVtbYEWRpH+Qw.chHhdg0IpZG.PVZokjwFaLA.nYylZZ.d+f6KMUieZXfNQDQCENQk6OjKyg3DQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQzPg+OxCE8upVyK9I.....IUjSD4pPfIH" ],
									"destrect" : [ 0.0, 0.0, 125.0, 100.0 ],
									"embed" : 1,
									"frozen_box_attributes" : [ "destrect" ],
									"id" : "obj-34",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -1.0, -9.0, 125.0, 100.0 ],
									"pic" : "Macintosh HD:/Users/gondre/Pictures/LOGOS/LOGOS_CMMR2013/LMA/lma_picto_web__transp.png"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontface" : 2,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-36",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 90.0, 453.0, 20.0 ],
									"text" : "[s2m.wacom] is based on the design of the [wacom] object whose history is :"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 2,
									"id" : "obj-5",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 5.0, 80.0, 572.0, 128.0 ],
									"rounded" : 0
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 70.0, 90.0, 56.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p credits"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.0, 120.0, 133.0, 20.0 ],
					"saved_object_attributes" : 					{
						"filename" : "helpstarter.js",
						"parameter_enable" : 0
					}
,
					"text" : "js helpstarter.js wacom"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x86"
						}
,
						"rect" : [ 100.0, 126.0, 936.0, 546.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 13.0,
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
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 656.0, 188.0, 60.0, 20.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-61",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 85.0, 405.0, 183.0, 43.0 ],
									"text" : "allow to get raw coordinates from the mouse. (or from one finger if you use a \"touch\" tablet)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 61.5, 426.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-46",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 61.5, 454.0, 61.0, 17.0 ],
									"text" : "mouse $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 563.0, 217.0, 51.0, 19.0 ],
									"text" : "getinfo"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"frgb" : 0.0,
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 824.0, 284.0, 67.0, 21.0 ],
									"text" : "to umenu"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-64",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 405.0, 337.0, 52.0, 47.0 ],
									"text" : "pen buttons flag"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-63",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 558.5, 157.0, 88.0, 60.0 ],
									"text" : "report tablet capabilities in the Max window"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"frgb" : 0.0,
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 29.0, 167.0, 96.0, 19.0 ],
									"text" : "start/stop polling"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-56",
									"items" : [ "Raw", "(default)", ",", "0-1", ",", "0-1", "proportionnal", ",", "mm" ],
									"labelclick" : 1,
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 423.0, 187.0, 99.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-60",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 423.0, 217.0, 74.0, 18.0 ],
									"text" : "xyrange $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"hint" : "press menu to update the list of tablets and tools",
									"id" : "obj-51",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 656.0, 217.0, 40.0, 17.0 ],
									"text" : "menu"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.690196, 0.533333, 0.227451, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-97",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 3,
											"architecture" : "x86"
										}
,
										"rect" : [ 631.0, 391.0, 724.0, 419.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
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
													"color" : [ 0.923913, 0.55438, 0.260774, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 6,
															"minor" : 1,
															"revision" : 3,
															"architecture" : "x86"
														}
,
														"rect" : [ 862.0, 397.0, 670.0, 549.0 ],
														"bglocked" : 0,
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
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
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-73",
																	"ignoreclick" : 1,
																	"maxclass" : "number",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "int", "bang" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 116.0, 58.0, 100.0, 20.0 ],
																	"triangle" : 0
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"frgb" : 0.0,
																	"id" : "obj-66",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 15.5, 431.888672, 102.5, 18.0 ],
																	"text" : "Tangential Pressure"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"frgb" : 0.0,
																	"id" : "obj-65",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 64.0, 483.202881, 54.0, 18.0 ],
																	"text" : "Rotation"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"frgb" : 0.0,
																	"id" : "obj-64",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 64.0, 404.872559, 54.0, 18.0 ],
																	"text" : "Pressure"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"frgb" : 0.0,
																	"id" : "obj-63",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 61.0, 457.436279, 57.0, 18.0 ],
																	"text" : "Orient Info"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"frgb" : 0.0,
																	"id" : "obj-62",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 79.0, 377.856384, 39.0, 18.0 ],
																	"text" : "AbsZ"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"frgb" : 0.0,
																	"id" : "obj-61",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 89.0, 350.84021, 29.0, 18.0 ],
																	"text" : "TiltY"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"frgb" : 0.0,
																	"id" : "obj-60",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 89.0, 323.824036, 29.0, 18.0 ],
																	"text" : "TiltX"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"frgb" : 0.0,
																	"id" : "obj-59",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 73.0, 296.807922, 45.0, 18.0 ],
																	"text" : "Buttons"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"frgb" : 0.0,
																	"id" : "obj-55",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 70.0, 269.791748, 48.0, 18.0 ],
																	"text" : "Vendor3"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"frgb" : 0.0,
																	"id" : "obj-54",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 67.0, 242.775574, 51.0, 18.0 ],
																	"text" : "Vendor2"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"frgb" : 0.0,
																	"id" : "obj-53",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 71.0, 215.75943, 47.0, 18.0 ],
																	"text" : "Vendor1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"frgb" : 0.0,
																	"id" : "obj-52",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 83.0, 188.743256, 35.0, 18.0 ],
																	"text" : "AbsY"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"frgb" : 0.0,
																	"id" : "obj-51",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 80.0, 161.727112, 38.0, 18.0 ],
																	"text" : " AbsX"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 14.0,
																	"frgb" : 0.0,
																	"id" : "obj-49",
																	"linecount" : 3,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 335.0, 85.0, 309.0, 53.0 ],
																	"text" : "Use these masks with the capabilities field to determine what fields in a Tablet Event are valid for this device."
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-47",
																	"maxclass" : "toggle",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 118.0, 483.202881, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-43",
																	"maxclass" : "toggle",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 118.0, 457.436279, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-44",
																	"maxclass" : "toggle",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 118.0, 431.888672, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-45",
																	"maxclass" : "toggle",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 118.0, 404.872559, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-46",
																	"maxclass" : "toggle",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 118.0, 377.856384, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-42",
																	"maxclass" : "toggle",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 118.0, 350.84021, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-41",
																	"maxclass" : "toggle",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 118.0, 323.824036, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-40",
																	"maxclass" : "toggle",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 118.0, 296.807922, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-39",
																	"maxclass" : "toggle",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 118.0, 269.791748, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-38",
																	"maxclass" : "toggle",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 118.0, 242.775574, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-37",
																	"maxclass" : "toggle",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 118.0, 215.75943, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-36",
																	"maxclass" : "toggle",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 118.0, 188.743256, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-35",
																	"maxclass" : "toggle",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 118.0, 161.727112, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-34",
																	"maxclass" : "toggle",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 118.0, 134.0, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-32",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 14,
																	"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int" ],
																	"patching_rect" : [ 115.782288, 113.0, 190.587952, 20.0 ],
																	"text" : "unpack i i i i i i i i i i i i i i"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-31",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 274.0, 28.0, 60.0, 20.0 ],
																	"text" : "loadbang"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-29",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 274.0, 56.5, 294.0, 18.0 ],
																	"text" : "1 2 4 8 16 32 64 128 256 512 1024 2048 4096 8192"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-30",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 116.0, 86.0, 177.0, 20.0 ],
																	"text" : "vexpr $i1 & $i2 @scalarmode 1"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-1",
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 116.0, 21.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"frgb" : 0.0,
																	"id" : "obj-2",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 69.0, 134.0, 50.0, 18.0 ],
																	"text" : "\tDeviceId"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-73", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"midpoints" : [ 125.5, 51.5, 125.5, 51.5 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-30", 1 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-29", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-32", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-30", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-29", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"midpoints" : [ 283.5, 47.0, 283.5, 47.0 ],
																	"source" : [ "obj-31", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-34", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-32", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-35", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"midpoints" : [ 138.481354, 133.0, 139.0, 133.0, 139.0, 154.0, 127.5, 154.0 ],
																	"source" : [ "obj-32", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-36", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"midpoints" : [ 151.680435, 184.0, 127.5, 184.0 ],
																	"source" : [ "obj-32", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-37", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"midpoints" : [ 164.879501, 211.0, 127.5, 211.0 ],
																	"source" : [ "obj-32", 3 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-38", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"midpoints" : [ 178.078583, 238.0, 127.5, 238.0 ],
																	"source" : [ "obj-32", 4 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-39", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"midpoints" : [ 191.277649, 265.0, 127.5, 265.0 ],
																	"source" : [ "obj-32", 5 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-40", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"midpoints" : [ 204.47673, 292.0, 127.5, 292.0 ],
																	"source" : [ "obj-32", 6 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-41", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"midpoints" : [ 217.675797, 319.0, 127.5, 319.0 ],
																	"source" : [ "obj-32", 7 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-42", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"midpoints" : [ 230.874878, 346.0, 127.5, 346.0 ],
																	"source" : [ "obj-32", 8 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-43", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"midpoints" : [ 283.671173, 454.0, 127.5, 454.0 ],
																	"source" : [ "obj-32", 12 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-44", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"midpoints" : [ 270.472107, 427.0, 127.5, 427.0 ],
																	"source" : [ "obj-32", 11 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-45", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"midpoints" : [ 257.27301, 400.0, 127.5, 400.0 ],
																	"source" : [ "obj-32", 10 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-46", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"midpoints" : [ 244.073944, 373.0, 127.5, 373.0 ],
																	"source" : [ "obj-32", 9 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-47", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"midpoints" : [ 296.870239, 478.0, 127.5, 478.0 ],
																	"source" : [ "obj-32", 13 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-30", 0 ],
																	"disabled" : 0,
																	"hidden" : 0,
																	"source" : [ "obj-73", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 482.999939, 295.0, 119.0, 18.0 ],
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"default_fontsize" : 12.0,
														"description" : "",
														"digest" : "",
														"fontface" : 0,
														"fontname" : "Arial",
														"fontsize" : 12.0,
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p decodeCapabilityMask"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.67 ],
													"fontface" : 2,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-51",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 274.999939, 337.0, 198.0, 18.0 ],
													"text" : "1 - entering; 0 - leaving"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.67 ],
													"fontface" : 2,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-54",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 274.999939, 316.0, 197.0, 18.0 ],
													"text" : "mask representing capabilities of device"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.67 ],
													"fontface" : 2,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-56",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 274.999939, 295.0, 186.0, 18.0 ],
													"text" : "mask representing capabilities of device"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.67 ],
													"fontface" : 2,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-57",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 274.999939, 273.0, 186.0, 18.0 ],
													"text" : "vendor defined unique ID - as a symbol"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.67 ],
													"fontface" : 2,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-61",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 274.999939, 253.0, 219.0, 18.0 ],
													"text" : "vendor defined serial number of pointing device"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.67 ],
													"fontface" : 2,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-62",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 274.999939, 233.0, 219.0, 18.0 ],
													"text" : "vendor defined pointing device type "
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.67 ],
													"fontface" : 2,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-63",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 274.999939, 211.0, 219.0, 18.0 ],
													"text" : "system assigned unique tablet ID"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.67 ],
													"fontface" : 2,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-64",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 274.999939, 190.0, 219.0, 18.0 ],
													"text" : "deviceID -"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.67 ],
													"fontface" : 2,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-65",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 274.999939, 165.0, 281.0, 29.0 ],
													"text" : "index of the device on the tablet. Usually 0, except for tablets that support multiple concurrent devices"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.67 ],
													"fontface" : 2,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-66",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 274.999939, 148.0, 247.0, 18.0 ],
													"text" : "vendor defined tablet ID"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 0.67 ],
													"fontface" : 2,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-68",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 274.999939, 128.0, 247.0, 18.0 ],
													"text" : "vendor defined, typically USB vendor ID"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"frgb" : 0.0,
													"id" : "obj-67",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 175.999939, 43.0, 174.0, 20.0 ],
													"text" : "tablet proximity record"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 2,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-70",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 175.999939, 69.0, 230.0, 18.0 ],
													"text" : "gives you the following tablet and tool properties."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.595187,
													"id" : "obj-71",
													"ignoreclick" : 1,
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 160.233337, 337.0, 114.766602, 19.0 ],
													"triangle" : 0
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.595187,
													"id" : "obj-72",
													"ignoreclick" : 1,
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 160.233337, 316.0, 114.766602, 19.0 ],
													"triangle" : 0
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.595187,
													"id" : "obj-73",
													"ignoreclick" : 1,
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 160.233337, 294.0, 114.766602, 19.0 ],
													"triangle" : 0
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-74",
													"ignoreclick" : 1,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 160.233337, 273.0, 114.766602, 18.0 ],
													"text" : "\"146028888065\""
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.595187,
													"id" : "obj-75",
													"ignoreclick" : 1,
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 160.233337, 252.0, 114.766602, 19.0 ],
													"triangle" : 0
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.595187,
													"id" : "obj-76",
													"ignoreclick" : 1,
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 160.233337, 231.0, 114.766602, 19.0 ],
													"triangle" : 0
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.595187,
													"id" : "obj-77",
													"ignoreclick" : 1,
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 160.233337, 210.0, 114.766602, 19.0 ],
													"triangle" : 0
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.595187,
													"id" : "obj-78",
													"ignoreclick" : 1,
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 160.233337, 189.0, 114.766602, 19.0 ],
													"triangle" : 0
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.595187,
													"id" : "obj-79",
													"ignoreclick" : 1,
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 160.233337, 168.0, 114.766602, 19.0 ],
													"triangle" : 0
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.595187,
													"id" : "obj-80",
													"ignoreclick" : 1,
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 160.233337, 147.0, 114.766602, 19.0 ],
													"triangle" : 0
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.595187,
													"id" : "obj-15",
													"ignoreclick" : 1,
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 160.233337, 126.0, 114.766602, 19.0 ],
													"triangle" : 0
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-81",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 11,
													"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "", "int", "int", "int" ],
													"patching_rect" : [ 160.233337, 95.0, 121.0, 17.0 ],
													"text" : "unpack 0 0 0 0 0 0 0 s 0 0 0"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 1,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-82",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 51.0, 336.0, 104.0, 18.0 ],
													"text" : "isEnteringProximity"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 1,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-83",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 48.0, 315.0, 107.0, 18.0 ],
													"text" : "pointingDeviceType"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 1,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-84",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 70.0, 294.0, 85.0, 18.0 ],
													"text" : "capabilityMask"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 1,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-85",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 99.0, 273.0, 56.0, 18.0 ],
													"text" : "uniqueID"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 1,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-86",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 8.0, 252.0, 147.0, 18.0 ],
													"text" : "pointingDeviceSerialNumber"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 1,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-87",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 15.0, 232.0, 140.0, 18.0 ],
													"text" : "vendorPointingDeviceType"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 1,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-88",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 70.0, 210.0, 85.0, 18.0 ],
													"text" : "systemTabletID"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 1,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-89",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 104.0, 189.0, 51.0, 18.0 ],
													"text" : "deviceID"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 1,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-90",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 65.0, 166.0, 90.0, 18.0 ],
													"text" : "pointingDeviceID"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 1,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-91",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 110.0, 147.0, 45.0, 18.0 ],
													"text" : "tabletID"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 1,
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"frgb" : 0.0,
													"id" : "obj-92",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 103.0, 127.0, 52.0, 18.0 ],
													"text" : "vendorID"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-96",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 160.233337, 10.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 169.733337, 314.0, 474.616638, 314.0, 474.616638, 287.0, 492.499939, 287.0 ],
													"source" : [ "obj-73", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 169.733337, 123.0, 169.733337, 123.0 ],
													"source" : [ "obj-81", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-71", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 271.733337, 333.0, 169.733337, 333.0 ],
													"source" : [ "obj-81", 10 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-72", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 261.533325, 320.0, 169.733337, 320.0 ],
													"source" : [ "obj-81", 9 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 251.333344, 291.0, 169.733337, 291.0 ],
													"source" : [ "obj-81", 8 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-74", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 241.133331, 270.0, 265.499939, 270.0 ],
													"source" : [ "obj-81", 7 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-75", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 230.933334, 249.0, 169.733337, 249.0 ],
													"source" : [ "obj-81", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-76", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 220.733337, 228.0, 169.733337, 228.0 ],
													"source" : [ "obj-81", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-77", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 210.53334, 207.0, 169.733337, 207.0 ],
													"source" : [ "obj-81", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-78", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 200.333344, 186.0, 169.733337, 186.0 ],
													"source" : [ "obj-81", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-79", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 190.133331, 165.0, 169.733337, 165.0 ],
													"source" : [ "obj-81", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-80", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 179.933334, 144.0, 169.733337, 144.0 ],
													"source" : [ "obj-81", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-81", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-96", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 746.0, 317.0, 139.770386, 19.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Arial",
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p TabletProximityRecord"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-55",
									"items" : [ "All tablets and tools", ",", "<separator>", ",", "0: Intuos pro L / all tools", ",", "0: Intuos pro L / 1: R3JpcCBQZW4", ",", "<separator>", ",", "(1: Intuos pro S / all tools)", ",", "(1: Intuos pro S / 1: R3JpcCBQZW4)" ],
									"labelclick" : 1,
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 731.0, 197.0, 178.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.690196, 0.533333, 0.227451, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 1,
											"revision" : 3,
											"architecture" : "x86"
										}
,
										"rect" : [ 614.0, 467.0, 273.0, 220.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 5.0, 5.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 0,
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
													"comment" : "",
													"id" : "obj-1",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 105.0, 10.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 203.0, 120.0, 21.0, 21.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 165.0, 121.0, 21.0, 21.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 105.0, 121.0, 21.0, 21.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 135.0, 121.0, 21.0, 21.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 75.0, 121.0, 21.0, 21.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 203.0, 79.0, 36.0, 20.0 ],
													"text" : "& 32"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 165.0, 79.0, 36.0, 20.0 ],
													"text" : "& 16"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 105.0, 79.0, 27.0, 20.0 ],
													"text" : "& 4"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 135.0, 79.0, 27.0, 20.0 ],
													"text" : "& 8"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 75.0, 79.0, 27.0, 20.0 ],
													"text" : "& 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 45.0, 121.0, 21.0, 21.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 45.0, 79.0, 27.0, 20.0 ],
													"text" : "& 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-14",
													"ignoreclick" : 1,
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 105.0, 45.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"frgb" : 0.0,
													"id" : "obj-15",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 35.0, 145.0, 206.0, 43.0 ],
													"text" : "this shows how the \"button flags\" output can be easily decoded by using the \"bitwise-and\" (&) binary logical operator"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 114.5, 70.0, 144.5, 70.0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 114.5, 70.0, 84.5, 70.0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 114.5, 70.0, 54.5, 70.0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 114.5, 70.0, 212.5, 70.0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 114.5, 70.0, 174.5, 70.0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"midpoints" : [ 114.5, 70.0, 114.5, 70.0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 395.0, 384.0, 101.0, 20.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"description" : "",
										"digest" : "",
										"fontface" : 0,
										"fontname" : "Arial",
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p decodeButtons"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-139",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 457.0, 337.0, 50.0, 20.0 ],
									"text" : "rotation"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-140",
									"ignoreclick" : 1,
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 456.0, 317.0, 61.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-135",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 553.622253, 337.0, 43.0, 20.0 ],
									"text" : "z axis"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-138",
									"ignoreclick" : 1,
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 553.0, 317.0, 61.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-40",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 174.0, 162.0, 111.0, 51.0 ],
									"text" : "!! Do not check it with\nthe pen !! only with the mouse. may bug anyway",
									"textcolor" : [ 0.97449, 0.042269, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 309.0, 187.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 309.0, 217.0, 88.0, 17.0 ],
									"text" : "background $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-29",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.0, 187.0, 41.0, 17.0 ],
									"text" : "nopoll"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-19",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.0, 187.0, 32.5, 17.0 ],
									"text" : "poll"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 154.0, 162.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 154.0, 217.0, 75.0, 17.0 ],
									"text" : "nopointer $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-28",
									"ignoreclick" : 1,
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 395.0, 317.0, 43.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-23",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 645.0, 337.0, 65.0, 33.0 ],
									"text" : "tangential pressure"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-24",
									"ignoreclick" : 1,
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 649.0, 317.0, 61.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 162.0, 337.0, 59.0, 20.0 ],
									"text" : "pressure"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-20",
									"ignoreclick" : 1,
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 167.0, 317.0, 50.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 328.0, 337.0, 37.0, 20.0 ],
									"text" : "Y tilt"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 264.0, 337.0, 34.0, 20.0 ],
									"text" : "x tilt"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-11",
									"ignoreclick" : 1,
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 323.0, 317.0, 58.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-12",
									"ignoreclick" : 1,
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 263.0, 317.0, 58.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 263.0, 292.0, 79.0, 19.0 ],
									"text" : "unpack f f"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"frgb" : 0.0,
									"id" : "obj-53",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 347.0, 18.0, 19.0 ],
									"text" : "y"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"frgb" : 0.0,
									"id" : "obj-52",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 322.0, 18.0, 19.0 ],
									"text" : "x"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-27",
									"ignoreclick" : 1,
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 70.0, 342.0, 58.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-25",
									"ignoreclick" : 1,
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 70.0, 317.0, 58.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595187,
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 70.0, 292.0, 80.0, 19.0 ],
									"text" : "unpack f f"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 1.0, 0.603922, 0.0, 1.0 ],
									"fontname" : "Verdana",
									"fontsize" : 14.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 9,
									"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 70.0, 260.0, 791.0, 24.0 ],
									"text" : "s2m.wacom"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"filename" : "helpdetails.js",
									"id" : "obj-2",
									"ignoreclick" : 1,
									"jsarguments" : [ "s2m.wacom" ],
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 4.0, 3.0, 264.0, 52.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontface" : 2,
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"frgb" : 0.0,
									"id" : "obj-1",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 268.0, 13.0, 494.0, 31.0 ],
									"text" : "Report the location, pressure and other parameters of transducers on a Wacom™ Graphics Tablet.\nYou can use several tablets and several tools with different wacom objects."
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontface" : 2,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-59",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 713.885193, 510.0, 204.0, 20.0 ],
									"text" : "Please use up-to-date tablet drivers."
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"frgb" : 0.0,
									"id" : "obj-48",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 746.0, 217.0, 153.0, 40.0 ],
									"text" : "If your tool is not in the list, just put it on the tablet and press \"menu\" once again",
									"textcolor" : [ 0.839216, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-54",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 649.0, 137.0, 102.0, 47.0 ],
									"text" : "press menu to update the list of tablets and tools"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-57",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 771.0, 142.0, 147.0, 47.0 ],
									"text" : "list of tablets and tools: choose all tablets, one tablet, or one tool"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-42",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 300.0, 137.0, 98.0, 47.0 ],
									"text" : "Use the object when Max/MSP is in background"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-41",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 129.0, 102.0, 100.0, 60.0 ],
									"text" : "disconnect the mouse pointer from the selected tablet"
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 419.0, 167.0, 126.0, 20.0 ],
									"text" : "change range for X Y"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 140.5, 339.0, 79.5, 339.0 ],
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 572.5, 245.5, 79.5, 245.5 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 43.5, 224.0, 79.5, 224.0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 79.5, 236.5, 79.5, 236.5 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-138", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-140", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 369.0, 305.5, 404.5, 305.5 ],
									"source" : [ "obj-3", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 851.5, 288.0, 915.851807, 288.0, 915.851807, 191.0, 740.5, 191.0 ],
									"source" : [ "obj-3", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 318.5, 245.0, 79.5, 245.0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 71.0, 482.0, 22.75, 482.0, 22.75, 250.0, 79.5, 250.0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 665.5, 245.5, 79.5, 245.5 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 740.5, 245.0, 79.5, 245.0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 163.5, 245.5, 79.5, 245.5 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 432.5, 245.5, 79.5, 245.5 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 15.0, 30.0, 50.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 13.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 13.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p basic",
					"varname" : "basic_tab"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 26.0, 1051.0, 575.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 13.0,
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
						"boxes" : [  ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 165.0, 165.0, 50.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 13.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 13.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p ?",
					"varname" : "q_tab"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "helpdetails.js",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/help-resources",
				"patcherrelativepath" : "../../../../../Applications/Max 6.1/Cycling '74/help-resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "helpstarter.js",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/help-resources",
				"patcherrelativepath" : "../../../../../Applications/Max 6.1/Cycling '74/help-resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "s2m.wacom.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
