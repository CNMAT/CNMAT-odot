{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 4,
			"architecture" : "x86"
		}
,
		"rect" : [ 0.0, 44.0, 1680.0, 924.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Courier",
		"gridonopen" : 0,
		"gridsize" : [ 8.0, 8.0 ],
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
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2645.0, 1126.0, 90.0, 18.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 2552.0, 1126.0, 75.0, 18.0 ],
					"text" : "o.prepend"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2552.0, 1240.0, 97.0, 18.0 ],
					"text" : "s #0_forward",
					"textcolor" : [ 0.0, 0.501961, 0.25098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-46",
					"linecount" : 200,
					"maxclass" : "o.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1616.230591, 1312.0, 1128.0, 2406.0 ],
					"text" : "/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/characteristic/peripheral/name/SensorTag/characteristic/f000aa51_0451_4000_b000_000000000000 \"blob(28,\" \"-2,\" \"8,\" \"0,\" \"101,\" \"0,\" \"0,\" \"0)\"\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/peripheral/name \"SensorTag\"\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/characteristic/uuid \"f000aa51_0451_4000_b000_000000000000\"\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/gyroscope/x 0.109804\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/gyroscope/y 0.0313725\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/gyroscope/z 0.396078\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/characteristic/peripheral/name/SensorTag/characteristic/f000aa11_0451_4000_b000_000000000000 \"blob(1,\" \"-17,\" \"0,\" \"0)\"\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/peripheral/name \"SensorTag\"\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/characteristic/uuid \"f000aa11_0451_4000_b000_000000000000\"\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/accelerometer/x 1\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/accelerometer/y 238\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/accelerometer/z 0\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/characteristic/peripheral/name/SensorTag/characteristic/f000aa11_0451_4000_b000_000000000000 \"blob(1,\" \"0,\" \"-16,\" \"0)\"\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/peripheral/name \"SensorTag\"\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/characteristic/uuid \"f000aa11_0451_4000_b000_000000000000\"\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/accelerometer/x 1\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/accelerometer/y 0\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/accelerometer/z 239\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/characteristic/peripheral/name/SensorTag/characteristic/f000aa51_0451_4000_b000_000000000000 \"blob(-108,\" \"-1,\" \"-52,\" \"-1,\" \"-10,\" \"-1,\" \"0,\" \"0)\"\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/gyroscope/x 0.576486\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/gyroscope/y 0.796094\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/gyroscope/z 0.964843\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/characteristic/peripheral/name/SensorTag/characteristic/f000aa21_0451_4000_b000_000000000000 \"blob(-27,\" \"107,\" \"-14,\" \"92,\" \"0,\" \"0,\" \"0,\" \"0)\"\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/humidity/temperature 3.5767\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/humidity/humidity 15.1253\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/characteristic/peripheral/name/SensorTag/characteristic/f000aa31_0451_4000_b000_000000000000 \"blob(-125,\" \"1,\" \"67,\" \"6,\" \"13,\" \"19,\" \"0,\" \"0)\"\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/magnetometer/x 0.509819\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/magnetometer/y 0.262745\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/magnetometer/z 0.0509804\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/characteristic/peripheral/name/SensorTag/characteristic/f000aa11_0451_4000_b000_000000000000 \"blob(-2,\" \"0,\" \"16,\" \"0)\"\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/accelerometer/x 253\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/accelerometer/y 0\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/accelerometer/z 16\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/characteristic/peripheral/name/SensorTag/characteristic/f000aa51_0451_4000_b000_000000000000 \"blob(-24,\" \"-23,\" \"58,\" \"-14,\" \"89,\" \"22,\" \"0,\" \"0)\"\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/gyroscope/x 0.905898\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/gyroscope/y 0.227451\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/gyroscope/z 0.34902\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/characteristic/peripheral/name/SensorTag/characteristic/f000aa51_0451_4000_b000_000000000000 \"blob(-110,\" \"0,\" \"-13,\" \"0,\" \"-122,\" \"-1,\" \"0,\" \"0)\"\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/peripheral/name \"SensorTag\"\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/characteristic/uuid \"f000aa51_0451_4000_b000_000000000000\"\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/gyroscope/x 0.568643\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/gyroscope/y 0.949035\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/gyroscope/z 0.527337\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/characteristic/peripheral/name/SensorTag/characteristic/f000aa11_0451_4000_b000_000000000000 \"blob(-12,\" \"0,\" \"11,\" \"0)\"\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/accelerometer/x 243\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/accelerometer/y 0\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/accelerometer/z 11\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/characteristic/peripheral/name/SensorTag/characteristic/f000aa21_0451_4000_b000_000000000000 \"blob(105,\" \"106,\" \"-26,\" \"94,\" \"0,\" \"0,\" \"0,\" \"0)\"\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/humidity/temperature 1.64713\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/humidity/humidity 14.3722\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/characteristic/peripheral/name/SensorTag/characteristic/f000aa21_0451_4000_b000_000000000000 \"blob(-35,\" \"108,\" \"98,\" \"94,\" \"0,\" \"0,\" \"0,\" \"0)\"\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/humidity/temperature 3.4512\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/humidity/humidity 6.15043\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/characteristic/peripheral/name/SensorTag/characteristic/f000aa21_0451_4000_b000_000000000000 \"blob(-124,\" \"107,\" \"-126,\" \"92,\" \"0,\" \"0,\" \"0,\" \"0)\"\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/humidity/temperature 2.05506\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/humidity/humidity 8.09621\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/characteristic/peripheral/name/SensorTag/characteristic/f000aa31_0451_4000_b000_000000000000 \"blob(5,\" \"-8,\" \"60,\" \"7,\" \"-38,\" \"-6,\" \"0,\" \"0)\"\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/magnetometer/x 0.0196078\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/magnetometer/y 0.235294\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/magnetometer/z 0.85539\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/characteristic/peripheral/name/SensorTag/characteristic/f000aa31_0451_4000_b000_000000000000 \"blob(-79,\" \"-4,\" \"-117,\" \"3,\" \"4,\" \"0,\" \"0,\" \"0)\"\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/magnetometer/x 0.690211\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/magnetometer/y 0.541192\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/magnetometer/z 0.0156863\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/characteristic/peripheral/name/SensorTag/characteristic/f000aa01_0451_4000_b000_000000000000 \"blob(-83,\" \"-2,\" \"-56,\" \"12,\" \"0,\" \"0,\" \"0,\" \"0)\"\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/irtemperature/object 44205\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/irtemperature/ambient 51144\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/characteristic/peripheral/name/SensorTag/characteristic/f000aa31_0451_4000_b000_000000000000 \"blob(32,\" \"-2,\" \"-109,\" \"7,\" \"22,\" \"0,\" \"0,\" \"0)\"\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/magnetometer/x 0.12549\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/magnetometer/y 0.572564\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/magnetometer/z 0.0862745\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/characteristic/peripheral/name/SensorTag/characteristic/f000aa01_0451_4000_b000_000000000000 \"blob(-106,\" \"-2,\" \"84,\" \"13,\" \"0,\" \"0,\" \"0,\" \"0)\"\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/irtemperature/object 38294\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/irtemperature/ambient 21588\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/characteristic/peripheral/name/SensorTag/characteristic/f000aa01_0451_4000_b000_000000000000 \"blob(-71,\" \"-2,\" \"60,\" \"13,\" \"0,\" \"0,\" \"0,\" \"0)\"\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/irtemperature/object 47289\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/irtemperature/ambient 15420\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/characteristic/peripheral/name/SensorTag/characteristic/f000aa41_0451_4000_b000_000000000000 \"blob(-28,\" \"-2,\" \"-35,\" \"-99,\" \"0,\" \"0,\" \"0,\" \"0)\"\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/barometer/temperature 0.890211\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/barometer/pressure 0.86276\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/characteristic/peripheral/name/SensorTag/characteristic/f000aa41_0451_4000_b000_000000000000 \"blob(-51,\" \"1,\" \"53,\" \"-101,\" \"0,\" \"0,\" \"0,\" \"0)\"\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/barometer/temperature 0.800015\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/barometer/pressure 0.207843\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/characteristic/peripheral/name/SensorTag/characteristic/f000aa41_0451_4000_b000_000000000000 \"blob(4,\" \"2,\" \"17,\" \"-104,\" \"0,\" \"0,\" \"0,\" \"0)\"\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/barometer/temperature 0.0156863\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/barometer/pressure 0.0666667\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/characteristic/peripheral/name/SensorTag/characteristic/f000aa41_0451_4000_b000_000000000000 \"blob(124,\" \"1,\" \"51,\" \"-106,\" \"0,\" \"0,\" \"0,\" \"0)\"\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/barometer/temperature 0.486275\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/barometer/pressure 0.2\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/characteristic/peripheral/name/SensorTag/characteristic/f000aa01_0451_4000_b000_000000000000 \"blob(15,\" \"-1,\" \"-72,\" \"13,\" \"0,\" \"0,\" \"0,\" \"0)\"\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/irtemperature/object 3855\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/irtemperature/ambient 47032\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/characteristic/peripheral/name/SensorTag/characteristic/f000aa51_0451_4000_b000_000000000000 \"blob(86,\" \"-49,\" \"123,\" \"-9,\" \"47,\" \"0,\" \"0,\" \"0)\"\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/peripheral/name \"SensorTag\"\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/characteristic/uuid \"f000aa51_0451_4000_b000_000000000000\"\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/gyroscope/x 0.337255\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/gyroscope/y 0.482353\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/gyroscope/z 0.184314\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/characteristic/peripheral/name/SensorTag/characteristic/f000aa21_0451_4000_b000_000000000000 \"blob(9,\" \"109,\" \"-85,\" \"90,\" \"0,\" \"0,\" \"0,\" \"0)\"\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/humidity/temperature 0.141183\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/humidity/humidity 10.6694\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/characteristic/peripheral/name/SensorTag/characteristic/f000aa11_0451_4000_b000_000000000000 \"blob(10,\" \"-8,\" \"-7,\" \"0)\"\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/accelerometer/x 10\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/accelerometer/y 247\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/accelerometer/z 248\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/characteristic/peripheral/name/SensorTag/characteristic/f000aa31_0451_4000_b000_000000000000 \"blob(-43,\" \"-4,\" \"5,\" \"2,\" \"-119,\" \"-14,\" \"0,\" \"0)\"\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/magnetometer/x 0.831388\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/magnetometer/y 0.0196078\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/magnetometer/z 0.538857\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/characteristic/peripheral/name/SensorTag/characteristic/f000aa41_0451_4000_b000_000000000000 \"blob(-38,\" \"-3,\" \"25,\" \"-103,\" \"0,\" \"0,\" \"0,\" \"0)\"\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/barometer/temperature 0.850996\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/barometer/pressure 0.0980392\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/characteristic/peripheral/name/SensorTag/characteristic/f000aa01_0451_4000_b000_000000000000 \"blob(20,\" \"-1,\" \"-60,\" \"13,\" \"0,\" \"0,\" \"0,\" \"0)\"\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/irtemperature/object 5140\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/irtemperature/ambient 50116\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/characteristic/peripheral/name/SensorTag/characteristic/f000aa61_0451_4000_b000_000000000000 \"blob(59,\" \"0,\" \"0,\" \"0)\"\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/testservice/irtemp \"passed\"\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/testservice/humidity \"passed\"\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/testservice/magnetometer \"failed\"\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/testservice/accelerometer \"passed\"\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/testservice/barometer \"passed\"\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/testservice/gyroscope \"passed\"\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/testservice/allpassed false\n/4BCFFF0F_6D9C_43B9_B70F_F36EDAAD0454/characteristic/peripheral/name/SensorTag/characteristic/2a00 \"blob(84,\" \"73,\" \"32,\" \"66,\" \"76,\" \"69,\" \"32,\" \"83,\" \"101,\" \"110,\" \"115,\" \"111,\" \"114,\" \"32,\" \"84,\" \"97,\" \"103,\" \"0,\" \"0,\" \"0)\"\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/characteristic/peripheral/name/SensorTag/characteristic/f000aa61_0451_4000_b000_000000000000 \"blob(63,\" \"0,\" \"0,\" \"0)\"\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/testservice/irtemp \"passed\"\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/testservice/humidity \"passed\"\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/testservice/magnetometer \"passed\"\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/testservice/accelerometer \"passed\"\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/testservice/barometer \"passed\"\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/testservice/gyroscope \"passed\"\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/testservice/allpassed false\n/C9D5EB18_36E0_4F9F_8BA8_55384EDFA7FF/characteristic/peripheral/name/SensorTag/characteristic/2a00 \"blob(84,\" \"73,\" \"32,\" \"66,\" \"76,\" \"69,\" \"32,\" \"83,\" \"101,\" \"110,\" \"115,\" \"111,\" \"114,\" \"32,\" \"84,\" \"97,\" \"103,\" \"0,\" \"0,\" \"0)\"\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/characteristic/peripheral/name/SensorTag/characteristic/f000aa61_0451_4000_b000_000000000000 \"blob(59,\" \"0,\" \"0,\" \"0)\"\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/testservice/irtemp \"passed\"\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/testservice/humidity \"passed\"\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/testservice/magnetometer \"failed\"\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/testservice/accelerometer \"passed\"\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/testservice/barometer \"passed\"\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/testservice/gyroscope \"passed\"\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/testservice/allpassed false\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/characteristic/peripheral/name/SensorTag/characteristic/f000aa61_0451_4000_b000_000000000000 \"blob(63,\" \"0,\" \"0,\" \"0)\"\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/testservice/irtemp \"passed\"\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/testservice/humidity \"passed\"\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/testservice/magnetometer \"passed\"\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/testservice/accelerometer \"passed\"\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/testservice/barometer \"passed\"\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/testservice/gyroscope \"passed\"\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/testservice/allpassed false\n/33261813_7ACD_4C0F_81D9_D1BD40D80119/characteristic/peripheral/name/SensorTag/characteristic/2a00 \"blob(84,\" \"73,\" \"32,\" \"66,\" \"76,\" \"69,\" \"32,\" \"83,\" \"101,\" \"110,\" \"115,\" \"111,\" \"114,\" \"32,\" \"84,\" \"97,\" \"103,\" \"0,\" \"0,\" \"0)\"\n/C8011C0D_125C_41F5_A43E_F21A7238DC36/characteristic/peripheral/name/SensorTag/characteristic/2a00 \"blob(84,\" \"73,\" \"32,\" \"66,\" \"76,\" \"69,\" \"32,\" \"83,\" \"101,\" \"110,\" \"115,\" \"111,\" \"114,\" \"32,\" \"84,\" \"97,\" \"103,\" \"0,\" \"0,\" \"0)\"\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/characteristic/peripheral/name/SensorTag/characteristic/f000aa61_0451_4000_b000_000000000000 \"blob(63,\" \"0,\" \"0,\" \"0)\"\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/testservice/irtemp \"passed\"\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/testservice/humidity \"passed\"\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/testservice/magnetometer \"passed\"\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/testservice/accelerometer \"passed\"\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/testservice/barometer \"passed\"\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/testservice/gyroscope \"passed\"\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/testservice/allpassed false\n/79A329D3_9D96_4547_8D71_7A73FFEDDF5F/characteristic/peripheral/name/SensorTag/characteristic/2a00 \"blob(84,\" \"73,\" \"32,\" \"66,\" \"76,\" \"69,\" \"32,\" \"83,\" \"101,\" \"110,\" \"115,\" \"111,\" \"114,\" \"32,\" \"84,\" \"97,\" \"103,\" \"0,\" \"0,\" \"0)\"",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x86"
						}
,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 8.0, 8.0 ],
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
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 78.0, 160.0, 47.0, 18.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 184.0, 242.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 78.0, 132.0, 104.0, 18.0 ],
									"text" : "o.route /self"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.0, 192.0, 104.0, 18.0 ],
									"text" : "o.route /self"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 100.0, 47.0, 18.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-26",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-32",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 242.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 2552.0, 866.0, 39.0, 18.0 ],
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
					"text" : "p id"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 2552.0, 1198.0, 47.0, 18.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 2552.0, 1168.0, 61.0, 18.0 ],
					"text" : "o.union"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x86"
						}
,
						"rect" : [ 127.0, 89.0, 1417.0, 619.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 8.0, 8.0 ],
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
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-67",
									"linecount" : 7,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 264.0, 582.0, 90.0 ],
									"text" : "o.expr /irtemperature/object = ((/irtemperature/object[[0]] < 0 ? /irtemperature/object[[0]] + 256 : /irtemperature/object[[0]]) * 256) + (/irtemperature/object[[1]] < 0 ? /irtemperature/object[[1]] + 256 : /irtemperature/object[[0]])\\; /irtemperature/ambient = ((/irtemperature/ambient[[0]] < 0 ? /irtemperature/ambient[[0]] + 256 : /irtemperature/ambient[[0]]) * 256) + (/irtemperature/ambient[[1]] < 0 ? /irtemperature/ambient[[1]] + 256 : /irtemperature/ambient[[0]])\\;"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-66",
									"linecount" : 9,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 132.0, 601.0, 114.0 ],
									"text" : "o.expr /irtemperature/object = [int8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa01_0451_4000_b000_000000000000[[0]])\\, uint8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa01_0451_4000_b000_000000000000[[1]])]\\; /irtemperature/ambient = [int8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa01_0451_4000_b000_000000000000[[2]])\\, uint8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa01_0451_4000_b000_000000000000[[3]])]\\;"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 100.0, 493.0, 18.0 ],
									"text" : "o.cond /characteristic/uuid == f000aa01_0451_4000_b000_000000000000"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-64",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-68",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 45.0, 414.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-65", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-67", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 2552.0, 1092.0, 183.0, 18.0 ],
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
					"text" : "p process ir temperature"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x86"
						}
,
						"rect" : [ 25.0, 69.0, 1341.0, 826.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 8.0, 8.0 ],
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
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 672.0, 544.0, 603.0, 33.0 ],
									"text" : "o.expr /accelerometer/x = int32(/accelerometer/x)\\; /accelerometer/y = int32(/accelerometer/y)\\; /accelerometer/z = int32(/accelerometer/z)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 672.0, 472.0, 534.0, 47.0 ],
									"text" : "o.expr if(/accelerometer/x < 0\\, /accelerometer/x = 255 + /accelerometer/x)\\; if(/accelerometer/y < 0\\, /accelerometer/y = 255 + /accelerometer/y)\\; if(/accelerometer/z < 0\\, /accelerometer/z = 255 + /accelerometer/z)\\;"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 7,
									"maxclass" : "o.message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 160.0, 616.0, 568.0, 100.0 ],
									"text" : "/characteristic/peripheral/name/SensorTag/characteristic/f000aa11_0451_4000_b000_000000000000 \"blob(1,\" \"0,\" \"-16,\" \"0)\"\n/peripheral/name \"SensorTag\"\n/characteristic/uuid \"f000aa11_0451_4000_b000_000000000000\"\n/accelerometer/x 1\n/accelerometer/y 0\n/accelerometer/z 239",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"linecount" : 7,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 136.0, 601.0, 90.0 ],
									"text" : "o.expr /accelerometer/x = int32(/characteristic/peripheral/name/SensorTag/characteristic/f000aa11_0451_4000_b000_000000000000[[0]])\\; /accelerometer/y = int32(/characteristic/peripheral/name/SensorTag/characteristic/f000aa11_0451_4000_b000_000000000000[[1]])\\; /accelerometer/z = int32(/characteristic/peripheral/name/SensorTag/characteristic/f000aa11_0451_4000_b000_000000000000[[2]])\\;"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 100.0, 493.0, 18.0 ],
									"text" : "o.cond /characteristic/uuid == f000aa11_0451_4000_b000_000000000000"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-58",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-61",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 520.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-65", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 2552.0, 1060.0, 176.0, 18.0 ],
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
					"text" : "p process accelerometer"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x86"
						}
,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 8.0, 8.0 ],
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
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 376.0, 500.0, 18.0 ],
									"text" : "o.expr /humidity/temperature /= 16383.\\; /humidity/humidity /= 4095.\\;"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-67",
									"linecount" : 7,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 264.0, 601.0, 90.0 ],
									"text" : "o.expr /humidity/temperature = ((/humidity/temperature[[0]] < 0 ? /humidity/temperature[[0]] + 256 : /humidity/temperature[[0]]) * 256) + (/humidity/temperature[[1]] < 0 ? /humidity/temperature[[1]] + 256 : /humidity/temperature[[0]])\\; /humidity/humidity = ((/humidity/humidity[[0]] < 0 ? /humidity/humidity[[0]] + 256 : /humidity/humidity[[0]]) * 256) + (/humidity/humidity[[1]] < 0 ? /humidity/humidity[[1]] + 256 : /humidity/humidity[[0]])\\;"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-66",
									"linecount" : 9,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 132.0, 601.0, 114.0 ],
									"text" : "o.expr /humidity/temperature = [int8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa21_0451_4000_b000_000000000000[[0]])\\, uint8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa21_0451_4000_b000_000000000000[[1]])]\\; /humidity/humidity = [int8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa21_0451_4000_b000_000000000000[[2]])\\, uint8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa21_0451_4000_b000_000000000000[[3]])]\\;"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 100.0, 493.0, 18.0 ],
									"text" : "o.cond /characteristic/uuid == f000aa21_0451_4000_b000_000000000000"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-46",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-47",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 45.0, 414.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-65", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-67", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 2552.0, 1028.0, 140.0, 18.0 ],
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
					"text" : "p process humidity"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x86"
						}
,
						"rect" : [ 25.0, 69.0, 975.0, 644.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 8.0, 8.0 ],
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
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 432.0, 587.0, 30.0 ],
									"text" : "o.expr /magnetometer/x /= 65535.\\; /magnetometer/y /= 65535.\\; /magnetometer/z /= 65535.\\;"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-67",
									"linecount" : 8,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 308.0, 613.0, 102.0 ],
									"text" : "o.expr /magnetometer/x = ((/magnetometer/x[[0]] < 0 ? /magnetometer/x[[0]] + 256 : /magnetometer/x[[0]]) * 256) + (/magnetometer/x[[1]] < 0 ? /magnetometer/x[[1]] + 256 : /magnetometer/x[[0]])\\; /magnetometer/y = ((/magnetometer/y[[0]] < 0 ? /magnetometer/y[[0]] + 256 : /magnetometer/y[[0]]) * 256) + (/magnetometer/y[[1]] < 0 ? /magnetometer/y[[1]] + 256 : /magnetometer/y[[0]])\\; /magnetometer/z = ((/magnetometer/z[[0]] < 0 ? /magnetometer/z[[0]] + 256 : /magnetometer/z[[0]]) * 256) + (/magnetometer/z[[1]] < 0 ? /magnetometer/z[[1]] + 256 : /magnetometer/z[[0]])"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-66",
									"linecount" : 13,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 132.0, 601.0, 162.0 ],
									"text" : "o.expr /magnetometer/x = [int8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa31_0451_4000_b000_000000000000[[0]])\\, uint8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa31_0451_4000_b000_000000000000[[1]])]\\; /magnetometer/y = [int8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa31_0451_4000_b000_000000000000[[2]])\\, uint8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa31_0451_4000_b000_000000000000[[3]])]\\; /magnetometer/z = [int8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa31_0451_4000_b000_000000000000[[4]])\\, int8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa31_0451_4000_b000_000000000000[[5]])]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 100.0, 493.0, 18.0 ],
									"text" : "o.cond /characteristic/uuid == f000aa31_0451_4000_b000_000000000000"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-32",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-44",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 45.0, 470.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-65", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-67", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 2552.0, 996.0, 169.0, 18.0 ],
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
					"text" : "p process magnetometer"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x86"
						}
,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 8.0, 8.0 ],
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
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 368.0, 522.0, 18.0 ],
									"text" : "o.expr /barometer/temperature /= 65535.\\; /barometer/pressure /= 65535.\\;"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-67",
									"linecount" : 7,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 264.0, 608.0, 90.0 ],
									"text" : "o.expr /barometer/temperature = ((/barometer/temperature[[0]] < 0 ? /barometer/temperature[[0]] + 256 : /barometer/temperature[[0]]) * 256) + (/barometer/temperature[[1]] < 0 ? /barometer/temperature[[1]] + 256 : /barometer/temperature[[0]])\\; /barometer/pressure = ((/barometer/pressure[[0]] < 0 ? /barometer/pressure[[0]] + 256 : /barometer/pressure[[0]]) * 256) + (/barometer/pressure[[1]] < 0 ? /barometer/pressure[[1]] + 256 : /barometer/pressure[[0]])\\;"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-66",
									"linecount" : 9,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 132.0, 601.0, 114.0 ],
									"text" : "o.expr /barometer/temperature = [int8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa41_0451_4000_b000_000000000000[[0]])\\, uint8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa41_0451_4000_b000_000000000000[[1]])]\\; /barometer/pressure = [int8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa41_0451_4000_b000_000000000000[[2]])\\, uint8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa41_0451_4000_b000_000000000000[[3]])]\\;"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 100.0, 493.0, 18.0 ],
									"text" : "o.cond /characteristic/uuid == f000aa41_0451_4000_b000_000000000000"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-20",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 45.0, 414.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-65", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-67", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 2552.0, 964.0, 147.0, 18.0 ],
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
					"text" : "p process barometer"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 50.0, 1449.0, 865.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 8.0, 8.0 ],
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
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 416.0, 565.0, 18.0 ],
									"text" : "o.expr /gyroscope/x /= 65535.\\; /gyroscope/y /= 65535.\\; /gyroscope/z /= 65535."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-67",
									"linecount" : 7,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 308.0, 608.0, 90.0 ],
									"text" : "o.expr /gyroscope/x = ((/gyroscope/x[[0]] < 0 ? /gyroscope/x[[0]] + 256 : /gyroscope/x[[0]]) * 256) + (/gyroscope/x[[1]] < 0 ? /gyroscope/x[[1]] + 256 : /gyroscope/x[[0]])\\; /gyroscope/y = ((/gyroscope/y[[0]] < 0 ? /gyroscope/y[[0]] + 256 : /gyroscope/y[[0]]) * 256) + (/gyroscope/y[[1]] < 0 ? /gyroscope/y[[1]] + 256 : /gyroscope/y[[0]])\\; /gyroscope/z = ((/gyroscope/z[[0]] < 0 ? /gyroscope/z[[0]] + 256 : /gyroscope/z[[0]]) * 256) + (/gyroscope/z[[1]] < 0 ? /gyroscope/z[[1]] + 256 : /gyroscope/z[[0]])"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-66",
									"linecount" : 13,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 132.0, 601.0, 162.0 ],
									"text" : "o.expr /gyroscope/x = [int8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa51_0451_4000_b000_000000000000[[0]])\\, uint8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa51_0451_4000_b000_000000000000[[1]])]\\; /gyroscope/y = [int8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa51_0451_4000_b000_000000000000[[2]])\\, uint8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa51_0451_4000_b000_000000000000[[3]])]\\; /gyroscope/z = [int8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa51_0451_4000_b000_000000000000[[4]])\\, int8(/characteristic/peripheral/name/SensorTag/characteristic/f000aa51_0451_4000_b000_000000000000[[5]])]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 100.0, 493.0, 18.0 ],
									"text" : "o.cond /characteristic/uuid == f000aa51_0451_4000_b000_000000000000"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-77",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-78",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 528.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-65", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-77", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 2552.0, 932.0, 147.0, 18.0 ],
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
					"text" : "p process gyroscope"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x86"
						}
,
						"rect" : [ 25.0, 69.0, 869.0, 771.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 8.0, 8.0 ],
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
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-47",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 486.0, 601.0, 42.0 ],
									"text" : "o.expr /testservice/allpassed = bitand(/characteristic/peripheral/name/SensorTag/characteristic/f000aa61_0451_4000_b000_000000000000[[0]]\\, 128) == 0 ? false : true"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-46",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 430.0, 601.0, 42.0 ],
									"text" : "o.expr /testservice/gyroscope = bitand(/characteristic/peripheral/name/SensorTag/characteristic/f000aa61_0451_4000_b000_000000000000[[0]]\\, 32) == 0 ? failed : passed"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-45",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 374.0, 601.0, 42.0 ],
									"text" : "o.expr /testservice/barometer = bitand(/characteristic/peripheral/name/SensorTag/characteristic/f000aa61_0451_4000_b000_000000000000[[0]]\\, 16) == 0 ? failed : passed"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-44",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 316.0, 601.0, 42.0 ],
									"text" : "o.expr /testservice/accelerometer = bitand(/characteristic/peripheral/name/SensorTag/characteristic/f000aa61_0451_4000_b000_000000000000[[0]]\\, 8) == 0 ? failed : passed"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-32",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 262.0, 601.0, 42.0 ],
									"text" : "o.expr /testservice/magnetometer = bitand(/characteristic/peripheral/name/SensorTag/characteristic/f000aa61_0451_4000_b000_000000000000[[0]]\\, 4) == 0 ? failed : passed"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-23",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 206.0, 601.0, 42.0 ],
									"text" : "o.expr /testservice/humidity = bitand(/characteristic/peripheral/name/SensorTag/characteristic/f000aa61_0451_4000_b000_000000000000[[0]]\\, 2) == 0 ? failed : passed"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-20",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 142.0, 601.0, 42.0 ],
									"text" : "o.expr /testservice/irtemp = bitand(/characteristic/peripheral/name/SensorTag/characteristic/f000aa61_0451_4000_b000_000000000000[[0]]\\, 1) == 0 ? failed : passed"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Courier",
									"fontsize" : 12.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 100.0, 493.0, 18.0 ],
									"text" : "o.cond /characteristic/uuid == f000aa61_0451_4000_b000_000000000000"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-58",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-61",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 588.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-58", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 2552.0, 898.0, 169.0, 18.0 ],
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
					"text" : "p process test service"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"linecount" : 13,
					"maxclass" : "newobj",
					"numinlets" : 14,
					"numoutlets" : 14,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "FullPacket" ],
					"patching_rect" : [ 1029.999878, 332.0, 736.0, 162.0 ],
					"text" : "o.route /discover/characteristic/peripheral/name/SensorTag/service/uuid/1800 /discover/characteristic/peripheral/name/SensorTag/service/uuid/1801 /discover/characteristic/peripheral/name/SensorTag/service/uuid/180a /discover/characteristic/peripheral/name/SensorTag/service/uuid/f000aa00_0451_4000_b000_000000000000 /discover/characteristic/peripheral/name/SensorTag/service/uuid/f000aa10_0451_4000_b000_000000000000 /discover/characteristic/peripheral/name/SensorTag/service/uuid/f000aa20_0451_4000_b000_000000000000 /discover/characteristic/peripheral/name/SensorTag/service/uuid/f000aa30_0451_4000_b000_000000000000 /discover/characteristic/peripheral/name/SensorTag/service/uuid/f000aa40_0451_4000_b000_000000000000 /discover/characteristic/peripheral/name/SensorTag/service/uuid/f000aa50_0451_4000_b000_000000000000 /discover/characteristic/peripheral/name/SensorTag/service/uuid/ffe0 /discover/characteristic/peripheral/name/SensorTag/service/uuid/f000aa60_0451_4000_b000_000000000000 /discover/characteristic/peripheral/name/SensorTag/service/uuid/f000ccc0_0451_4000_b000_000000000000 /discover/characteristic/peripheral/name/SensorTag/service/uuid/f000ffc0_0451_4000_b000_000000000000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 48.0, 1584.0, 148.0, 18.0 ],
					"text" : "o.expr /read = true"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-59",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2060.692383, 548.0, 621.0, 54.0 ],
					"text" : "Connection Control Service:\nccc1: ConnInterval,SlaveLatency,SupervisionTimeout (2 bytes each)\nccc2: MinConnInterval,MaxConnInterval,SlaveLatency,SupervisionTimeout (2 bytes each)\nccc3: Change the value to disconnect"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-60",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "FullPacket" ],
					"patching_rect" : [ 1636.692139, 548.0, 426.0, 54.0 ],
					"text" : "o.select /characteristic/uuid/f000ccc1_0451_4000_b000_000000000000 /characteristic/uuid/f000ccc2_0451_4000_b000_000000000000 /characteristic/uuid/f000ccc3_0451_4000_b000_000000000000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-56",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2005.53833, 620.0, 513.0, 54.0 ],
					"text" : "Test Service:\naa61: Self-test results (high bit indicates PASSED): Bit 0:IR temp, 1:Humidity, 2:Magnetometer, 3:accelerometer, 4:Barometer, 5:Gyroscope\naa62: bit 7: enable test mode; bit 0-1 LED bit mask"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-57",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "FullPacket" ],
					"patching_rect" : [ 1581.53833, 620.0, 426.0, 42.0 ],
					"text" : "o.select /characteristic/uuid/f000aa61_0451_4000_b000_000000000000 /characteristic/uuid/f000aa62_0451_4000_b000_000000000000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-52",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1719.999878, 684.0, 162.0, 30.0 ],
					"text" : "Characteristics:\n2803: Key Press State"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-55",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 1526.384521, 684.0, 193.615356, 30.0 ],
					"text" : "o.select /characteristic/uuid/2803"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 359.0, 1584.0, 219.0, 18.0 ],
					"text" : "o.expr /write = blob(int8(7))"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-37",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1897.230591, 740.0, 566.0, 66.0 ],
					"text" : "Gyroscope Characteristics:\naa51: XLSB:XMSB:YLSB:YMSB: ZLSB:ZMSB\naa52: Write 0 to turn off gyroscope, 1 to enable X axis only, 2 to enable Y axis only, 3 = X and Y, 4 = Z only, 5 = X and Z, 6 = Y and Z, 7 = X, Y and Z\naa53: Period = [Input*10] ms, (lower limit 100 ms), default 1000 ms"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-40",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "FullPacket" ],
					"patching_rect" : [ 1471.230591, 740.0, 426.0, 54.0 ],
					"text" : "o.select /characteristic/uuid/f000aa51_0451_4000_b000_000000000000 /characteristic/uuid/f000aa52_0451_4000_b000_000000000000 /characteristic/uuid/f000aa53_0451_4000_b000_000000000000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-35",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1839.999878, 836.0, 630.456787, 78.0 ],
					"text" : "Barometer Characteristics:\naa41: TempLSB:TempMSB:PressureLSB:PressureMSB\naa42: Write \"01\" to start Sensor and Measurements, \"00\" to put to sleep, \"02\" to read calibration values from sensor\naa43: Barometer Calibration\naa44: Period = [Input*10] ms, (lower limit 100 ms), default 1000 ms"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-36",
					"linecount" : 5,
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "FullPacket" ],
					"patching_rect" : [ 1416.076782, 836.0, 426.0, 66.0 ],
					"text" : "o.select /characteristic/uuid/f000aa41_0451_4000_b000_000000000000 /characteristic/uuid/f000aa42_0451_4000_b000_000000000000 /characteristic/uuid/f000aa43_0451_4000_b000_000000000000 /characteristic/uuid/f000aa43_0451_4000_b000_000000000000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-33",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1783.999878, 940.0, 529.0, 54.0 ],
					"text" : "Magnetometer Characteristics:\naa31: XLSB:XMSB:YLSB:YMSB: ZLSB:ZMSB Coordinates\naa32: Write \"01\" to start Sensor and Measurements, \"00\" to put to sleep\naa33: Period = [Input*10] ms, (lower limit 100 ms), default 1000 ms"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "FullPacket" ],
					"patching_rect" : [ 1360.922974, 940.0, 426.0, 54.0 ],
					"text" : "o.select /characteristic/uuid/f000aa31_0451_4000_b000_000000000000 /characteristic/uuid/f000aa32_0451_4000_b000_000000000000 /characteristic/uuid/f000aa33_0451_4000_b000_000000000000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-29",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1727.999878, 1028.0, 493.0, 54.0 ],
					"text" : "Humidity Characteristics:\naa21: TempLSB:TempMSB:HumidityLSB:HumidityMSB\naa22: Write \"01\" to start measurements, \"00\" to stop\naa23: Period = [Input*10] ms, (lower limit 100 ms), default 1000 ms"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "FullPacket" ],
					"patching_rect" : [ 1305.769165, 1028.0, 426.0, 54.0 ],
					"text" : "o.select /characteristic/uuid/f000aa21_0451_4000_b000_000000000000 /characteristic/uuid/f000aa22_0451_4000_b000_000000000000 /characteristic/uuid/f000aa23_0451_4000_b000_000000000000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 801.499939, 1584.0, 227.0, 18.0 ],
					"text" : "o.expr /write = blob(int8(10))"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-53",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1670.410156, 1108.0, 608.0, 54.0 ],
					"text" : "Accelerometer Characteristics:\naa11: X : Y : Z Coordinates\naa12: Write \"01\" to select range 2G, \"02\" for 4G, \"03\" for 8G, \"00\" disable sensor\naa13: Period = [Input*10] ms, (lower limit 100 ms), default 1000 ms"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-54",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "FullPacket" ],
					"patching_rect" : [ 1250.615234, 1108.0, 426.0, 54.0 ],
					"text" : "o.select /characteristic/uuid/f000aa11_0451_4000_b000_000000000000 /characteristic/uuid/f000aa12_0451_4000_b000_000000000000 /characteristic/uuid/f000aa13_0451_4000_b000_000000000000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-48",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1620.461426, 1196.0, 529.0, 54.0 ],
					"text" : "IR Temperature Characteristics:\naa01: ObjectLSB:ObjectMSB:AmbientLSB:AmbientMSB\naa02: Write \"01\" to start Sensor and Measurements, \"00\" to put to sleep\naa03: Period = [Input*10] ms, (lower limit 300 ms), default 1000 ms"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-49",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "FullPacket" ],
					"patching_rect" : [ 1195.461426, 1196.0, 426.0, 54.0 ],
					"text" : "o.select /characteristic/uuid/f000aa01_0451_4000_b000_000000000000 /characteristic/uuid/f000aa02_0451_4000_b000_000000000000 /characteristic/uuid/f000aa03_0451_4000_b000_000000000000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-41",
					"linecount" : 10,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1331.307617, 1284.0, 285.0, 126.0 ],
					"text" : "Device Information Characteristics:\n2a23: System ID\n2a24: Model Number String\n2a25: Serial Number String (N.A.)\n2a26: Firmware Revision String\n2a27: Hardware Revision String\n2a28: Software Revision String\n2a29: Manufacturer Name String\n2a2a: IEEE 11073-20601 Regulatory\n2a50: PnP ID"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"linecount" : 10,
					"maxclass" : "newobj",
					"numinlets" : 10,
					"numoutlets" : 10,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "FullPacket" ],
					"patching_rect" : [ 1140.307617, 1284.0, 196.0, 126.0 ],
					"text" : "o.select /characteristic/uuid/2a23 /characteristic/uuid/2a24 /characteristic/uuid/2a25 /characteristic/uuid/2a26 /characteristic/uuid/2a27 /characteristic/uuid/2a28 /characteristic/uuid/2a29 /characteristic/uuid/2a2a /characteristic/uuid/2a50"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-38",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1277.153687, 1436.0, 162.0, 30.0 ],
					"text" : "GA Characteristics:\n2a05: Service Changed"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-39",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 1085.153687, 1436.0, 192.0, 30.0 ],
					"text" : "o.select /characteristic/uuid/2a05"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-19",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1225.999878, 1488.0, 277.0, 78.0 ],
					"text" : "GAP Characteristics:\n2a00: Device Name\n2a01: Appearance\n2a02: Peripheral Privacy Flag\n2a03: Reconnection Address\n2a04: Peripheral Preferred Connection"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 6,
					"outlettype" : [ "", "", "", "", "", "FullPacket" ],
					"patching_rect" : [ 1030.0, 1488.0, 196.0, 78.0 ],
					"text" : "o.select /characteristic/uuid/2a00 /characteristic/uuid/2a01 /characteristic/uuid/2a02 /characteristic/uuid/2a03 /characteristic/uuid/2a04"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 579.500061, 1584.0, 220.0, 18.0 ],
					"text" : "o.expr /write = blob(int8(1))"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 195.999985, 1584.0, 163.0, 18.0 ],
					"text" : "o.expr /notify = true"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-30",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 166.999924, 20.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 505.999939, 500.0, 98.0, 18.0 ],
					"text" : "r #0_forward",
					"textcolor" : [ 0.0, 0.501961, 0.25098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 637.999939, 500.0, 105.0, 18.0 ],
					"text" : "r #0_delegate",
					"textcolor" : [ 0.0, 0.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1746.999878, 524.0, 105.0, 18.0 ],
					"text" : "s #0_delegate",
					"textcolor" : [ 0.0, 0.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-24",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 505.999939, 532.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-22",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 637.999939, 532.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 849.999939, 332.0, 105.0, 18.0 ],
					"text" : "s #0_delegate",
					"textcolor" : [ 0.0, 0.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 1746.999878, 500.0, 249.0, 18.0 ],
					"text" : "o.select /discover/characteristic"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 849.999939, 308.0, 199.0, 18.0 ],
					"text" : "o.select /discover/service"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"linecount" : 13,
					"maxclass" : "newobj",
					"numinlets" : 14,
					"numoutlets" : 14,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "FullPacket" ],
					"patching_rect" : [ 183.999924, 132.0, 685.0, 162.0 ],
					"text" : "o.select /discover/service/peripheral/name/SensorTag/service/uuid/1800 /discover/service/peripheral/name/SensorTag/service/uuid/1801 /discover/service/peripheral/name/SensorTag/service/uuid/180a /discover/service/peripheral/name/SensorTag/service/uuid/f000aa00_0451_4000_b000_000000000000 /discover/service/peripheral/name/SensorTag/service/uuid/f000aa10_0451_4000_b000_000000000000 /discover/service/peripheral/name/SensorTag/service/uuid/f000aa20_0451_4000_b000_000000000000 /discover/service/peripheral/name/SensorTag/service/uuid/f000aa30_0451_4000_b000_000000000000 /discover/service/peripheral/name/SensorTag/service/uuid/f000aa40_0451_4000_b000_000000000000 /discover/service/peripheral/name/SensorTag/service/uuid/f000aa50_0451_4000_b000_000000000000 /discover/service/peripheral/name/SensorTag/service/uuid/ffe0 /discover/service/peripheral/name/SensorTag/service/uuid/f000aa60_0451_4000_b000_000000000000 /discover/service/peripheral/name/SensorTag/service/uuid/f000ccc0_0451_4000_b000_000000000000 /discover/service/peripheral/name/SensorTag/service/uuid/f000ffc0_0451_4000_b000_000000000000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-11",
					"linecount" : 14,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 868.999939, 120.0, 529.0, 174.0 ],
					"text" : "Services:\n1800:                                     Generic Access Protocol (GAP)\n1801:                                     Generic Attribute\n180a:                                     Device Information\nf000aa00_0451_4000_b000_000000000000:     IR Temperature Service\nf000aa10_0451_4000_b000_000000000000:     Accelerometer Service\nf000aa20_0451_4000_b000_000000000000:     Humidity Service\nf000aa30_0451_4000_b000_000000000000:     Magnetometer Service\nf000aa40_0451_4000_b000_000000000000:     Barometer Service\nf000aa50_0451_4000_b000_000000000000:     Gyroscope Service\nffe0:                                     Simple Keys Service\nf000aa60_0451_4000_b000_000000000000:     Test Service\nf000ccc0_0451_4000_b000_000000000000:     Connection Control Service\nf000ffc0_0451_4000_b000_000000000000:     OAD Service"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 166.999924, 308.0, 242.0, 18.0 ],
					"text" : "o.expr /discover/services = true"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 408.999939, 308.0, 292.0, 18.0 ],
					"text" : "o.expr /discover/characteristics = true"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 166.999924, 106.5, 279.0, 18.0 ],
					"text" : "o.select /discover/peripheral"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 166.999924, 79.0, 126.0, 18.0 ],
					"text" : "o.io.bluetoothle"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 589.000061, 1626.910156, 17.210197, 1626.910156, 17.210197, 54.978355, 176.499924, 54.978355 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 2589.5, 1224.0, 2633.0, 1224.0, 2633.0, 1154.0, 2603.5, 1154.0 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 2561.5, 1232.846191, 2734.730469, 1232.846191 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 205.499985, 1613.910156, 30.210197, 1613.910156, 30.210197, 65.978355, 176.499924, 65.978355 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1039.5, 1574.089478, 57.5, 1574.089478 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1986.499878, 534.0, 2691.0, 534.0, 2691.0, 852.0, 2561.5, 852.0 ],
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 176.499924, 126.0, 176.499924, 126.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1450.935791, 1096.223145, 589.000061, 1096.223145 ],
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1315.269165, 1087.438599, 205.499985, 1087.438599 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1586.602539, 1103.543701, 810.999939, 1103.543701 ],
					"source" : [ "obj-31", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1641.756348, 1022.156616, 589.000061, 1022.156616 ],
					"source" : [ "obj-34", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1506.0896, 1014.836121, 589.000061, 1014.836121 ],
					"source" : [ "obj-34", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1370.422974, 1006.051514, 205.499985, 1006.051514 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1527.326782, 918.272095, 589.000061, 918.272095 ],
					"source" : [ "obj-36", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1425.576782, 910.951599, 205.499985, 910.951599 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1730.826782, 927.056702, 810.999939, 927.056702 ],
					"source" : [ "obj-36", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 418.499939, 345.216034, 152.0, 345.216034, 152.0, 75.0, 176.499924, 75.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1480.730591, 805.315796, 205.499985, 805.315796 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1616.397217, 814.928711, 368.5, 814.928711 ],
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1752.063965, 824.349121, 810.999939, 824.349121 ],
					"source" : [ "obj-40", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 368.5, 1619.910156, 24.599688, 1619.910156, 24.599688, 60.588867, 176.499924, 60.588867 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1340.628052, 1265.140991, 589.000061, 1265.140991 ],
					"source" : [ "obj-49", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1204.961426, 1256.356445, 205.499985, 1256.356445 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1476.2948, 1273.925537, 810.999939, 1273.925537 ],
					"source" : [ "obj-49", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1395.78186, 1180.14624, 589.000061, 1180.14624 ],
					"source" : [ "obj-54", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1260.115234, 1171.361572, 205.499985, 1171.361572 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1531.448608, 1187.466675, 810.999939, 1187.466675 ],
					"source" : [ "obj-54", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1535.884521, 727.641541, 57.5, 727.641541 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1591.03833, 674.11084, 57.5, 674.11084 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 810.999939, 1634.520752, 9.989178, 1634.520752, 9.989178, 49.588867, 176.499924, 49.588867 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 176.499924, 345.890656, 152.0, 345.890656, 152.0, 75.0, 176.499924, 75.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 57.5, 1608.910156, 38.820709, 1608.910156, 38.820709, 70.588867, 176.499924, 70.588867 ],
					"source" : [ "obj-87", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.io.bluetoothle.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.cond.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.message.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.prepend.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
