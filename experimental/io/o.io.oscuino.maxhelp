{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 3
		}
,
		"rect" : [ 25.0, 44.0, 1255.0, 772.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
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
					"fontsize" : 12.0,
					"id" : "obj-39",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 607.0, 279.0, 160.0, 48.0 ],
					"text" : "This is the Arduino Sketch source code to load. Works on Arduinos and Teensy:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"linecount" : 479,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 638.0, 334.0, 859.0, 6617.0 ],
					"text" : "/*\n * OSCuino\n * Copyright 2009 Adrian Freed. All Rights Reserved\n * Read and send the state of the Arduino pins to a host\n * using the official Open Sound Control (OSC) 1.1 serial wrapping: slip\n *\n * version 0.95\n   tested on teensy 2.0, teensy++ 1.0, lilypad, basic 168 Arduino\n   lilypad.\n   The Arduino Mega works if you build with the latest release\n   candidate Arduino.\n *\n */\n#include <avr/pgmspace.h>\n\n// The following OSC API is temporary. Although it generates valid OSC packets\n// it does not use OSC best practices or provide complete OSC features\n// In particular there are no time tags (no standard clock on Arduino)\n// or bundles and this api only provides for vectors of the same OSC type\n// these issues will be addressed in a C++ library\n\nconst byte eot = 0300;\nconst byte slipesc = 0333;\nconst byte slipescend = 0334;\nconst byte slipescesc = 0335;\nvoid oscoutbyte(byte b)\n{\n  if(b==eot){ \n    Serial.print(slipesc);\n    Serial.print(slipescend); \n  }\n  else if(b==slipesc) {  \n    Serial.print(slipesc);\n    Serial.print(slipescesc); \n  }\n  else  Serial.print(b, BYTE);\n\n}\nvoid oscout10b(unsigned int b)\n{\n  Serial.print(0, BYTE);\n  Serial.print(0, BYTE);\n\n  oscoutbyte((b>>2));\n  oscoutbyte((b<<6));\n}\nvoid oscoutword( int b)\n{\n  Serial.print(0, BYTE);\n  Serial.print(0, BYTE);\n  // Serial.print(2);\n  oscoutbyte((b>>8));\n  oscoutbyte((b>>0));\n\n}\nvoid oscoutlong(unsigned long b)\n{\n  oscoutbyte((b>>24));\n  oscoutbyte((b>>16));\n  oscoutbyte((b>>8));\n  oscoutbyte((b>>0));\n\n}\nvoid oscoutfloat(float f)\n{\n  union\n  {\n    float f;\n    unsigned long l;\n  } \n  x;\n  x.f = f;\n  oscoutlong(x.l);\n}\nvoid sendOSCempty(char *name, char *s)\n{\n  Serial.print(eot,BYTE);\n  Serial.print(name);\n\n  int n =0;\n  while( *name++)\n    ++n;\n  n %= 4;\n  n = 4-n;\n  //Serial.print(n);\n  while(n--)\n    Serial.print(0,BYTE);\n  Serial.print(\",\");\n  n = 1;\n  while(*s)\n    Serial.print(*s++), ++n;\n\n  n %= 4;\n  n = 4-n;\n  //Serial.print(n);\n  while(n--)\n    Serial.print(0,BYTE);\n\n  Serial.print(eot,BYTE);\n}    \n\n\nvoid sendOSCints(char *name,  int *integers, int length)\n{\n  Serial.print(eot,BYTE);\n  Serial.print(name);\n\n  int n =0;\n  while( *name++)\n    ++n;\n  n %= 4;\n  n = 4-n;\n  //Serial.print(n);\n  while(n--)\n    Serial.print(0,BYTE);\n  Serial.print(\",\");\n  for(int i=0;i<length;++i)\n  {\n    Serial.print(\"i\");\n  }\n  n = (length+1 )%4;\n  n = 4-n;\n  //Serial.print(n);\n  while(n--)\n    Serial.print(0,BYTE);\n\n  for(int i=0;i<length;++i)\n\n    oscoutword(integers[i]);\n  Serial.print(eot,BYTE);\n\n} \nvoid sendOSCfloats(char *name,  float *floats, int length)\n{\n    sendOSCthings( name, 'f', (uint32_t *) floats, length);\n}\n\nvoid sendOSCthings(char *name, char type, uint32_t *data, int length)\n{\n  Serial.print(eot,BYTE);\n  Serial.print(name);\n\n  int n =0;\n  while( *name++)\n    ++n;\n  n %= 4;\n  n = 4-n;\n  //Serial.print(n);\n  while(n--)\n    Serial.print(0,BYTE);\n  Serial.print(\",\");\n  for(int i=0;i<length;++i)\n  {\n    Serial.print(type);\n  }\n  n = (length+1 )%4;\n  n = 4-n;\n  //Serial.print(n);\n  while(n--)\n    Serial.print(0,BYTE);\n\n  for(int i=0;i<length;++i)\n    oscoutlong(data[i]);\n  Serial.print(eot,BYTE);\n}    \n static inline  void sendOSClongs(char *name,  long *longs, int length)\n{\n     sendOSCthings(name,'i', (uint32_t *)longs,  length);\n}\nvoid sendOSCbits(char *name, boolean *bits, int length)\n{\n  Serial.print(eot,BYTE);\n  Serial.print(name);\n\n  int n =0;\n  while( *name++)\n    ++n;\n  n %= 4;\n  n = 4-n;\n  //Serial.print(n);\n  while(n--)\n    Serial.print(0,BYTE);\n  Serial.print(\",\");\n  n = 1;\n  for(int i=0;i<length;++i)\n    Serial.print(bits[i]?'T':'F'),++n;\n \n  n %= 4;\n  n = 4-n;\n  //Serial.print(n);\n  while(n--)\n    Serial.print(0,BYTE);\n\n  Serial.print(eot,BYTE);\n}    \n\nstatic PROGMEM float floattable[1024] = {\n0.000000, 0.000978, 0.001955, 0.002933, 0.003910, 0.004888, 0.005865, 0.006843, 0.007820, 0.008798, 0.009775, \n0.010753, 0.011730, 0.012708, 0.013685, 0.014663, 0.015640, 0.016618, 0.017595, 0.018573, 0.019550, \n0.020528, 0.021505, 0.022483, 0.023460, 0.024438, 0.025415, 0.026393, 0.027370, 0.028348, 0.029326, \n0.030303, 0.031281, 0.032258, 0.033236, 0.034213, 0.035191, 0.036168, 0.037146, 0.038123, 0.039101, \n0.040078, 0.041056, 0.042033, 0.043011, 0.043988, 0.044966, 0.045943, 0.046921, 0.047898, 0.048876, \n0.049853, 0.050831, 0.051808, 0.052786, 0.053763, 0.054741, 0.055718, 0.056696, 0.057674, 0.058651, \n0.059629, 0.060606, 0.061584, 0.062561, 0.063539, 0.064516, 0.065494, 0.066471, 0.067449, 0.068426, \n0.069404, 0.070381, 0.071359, 0.072336, 0.073314, 0.074291, 0.075269, 0.076246, 0.077224, 0.078201, \n0.079179, 0.080156, 0.081134, 0.082111, 0.083089, 0.084066, 0.085044, 0.086022, 0.086999, 0.087977, \n0.088954, 0.089932, 0.090909, 0.091887, 0.092864, 0.093842, 0.094819, 0.095797, 0.096774, 0.097752, \n0.098729, 0.099707, 0.100684, 0.101662, 0.102639, 0.103617, 0.104594, 0.105572, 0.106549, 0.107527, \n0.108504, 0.109482, 0.110459, 0.111437, 0.112414, 0.113392, 0.114370, 0.115347, 0.116325, 0.117302, \n0.118280, 0.119257, 0.120235, 0.121212, 0.122190, 0.123167, 0.124145, 0.125122, 0.126100, 0.127077, \n0.128055, 0.129032, 0.130010, 0.130987, 0.131965, 0.132942, 0.133920, 0.134897, 0.135875, 0.136852, \n0.137830, 0.138807, 0.139785, 0.140762, 0.141740, 0.142717, 0.143695, 0.144673, 0.145650, 0.146628, \n0.147605, 0.148583, 0.149560, 0.150538, 0.151515, 0.152493, 0.153470, 0.154448, 0.155425, 0.156403, \n0.157380, 0.158358, 0.159335, 0.160313, 0.161290, 0.162268, 0.163245, 0.164223, 0.165200, 0.166178, \n0.167155, 0.168133, 0.169110, 0.170088, 0.171065, 0.172043, 0.173021, 0.173998, 0.174976, 0.175953, \n0.176931, 0.177908, 0.178886, 0.179863, 0.180841, 0.181818, 0.182796, 0.183773, 0.184751, 0.185728, \n0.186706, 0.187683, 0.188661, 0.189638, 0.190616, 0.191593, 0.192571, 0.193548, 0.194526, 0.195503, \n0.196481, 0.197458, 0.198436, 0.199413, 0.200391, 0.201369, 0.202346, 0.203324, 0.204301, 0.205279, \n0.206256, 0.207234, 0.208211, 0.209189, 0.210166, 0.211144, 0.212121, 0.213099, 0.214076, 0.215054, \n0.216031, 0.217009, 0.217986, 0.218964, 0.219941, 0.220919, 0.221896, 0.222874, 0.223851, 0.224829, \n0.225806, 0.226784, 0.227761, 0.228739, 0.229717, 0.230694, 0.231672, 0.232649, 0.233627, 0.234604, \n0.235582, 0.236559, 0.237537, 0.238514, 0.239492, 0.240469, 0.241447, 0.242424, 0.243402, 0.244379, \n0.245357, 0.246334, 0.247312, 0.248289, 0.249267, 0.250244, 0.251222, 0.252199, 0.253177, 0.254154, \n0.255132, 0.256109, 0.257087, 0.258065, 0.259042, 0.260020, 0.260997, 0.261975, 0.262952, 0.263930, \n0.264907, 0.265885, 0.266862, 0.267840, 0.268817, 0.269795, 0.270772, 0.271750, 0.272727, 0.273705, \n0.274682, 0.275660, 0.276637, 0.277615, 0.278592, 0.279570, 0.280547, 0.281525, 0.282502, 0.283480, \n0.284457, 0.285435, 0.286413, 0.287390, 0.288368, 0.289345, 0.290323, 0.291300, 0.292278, 0.293255, \n0.294233, 0.295210, 0.296188, 0.297165, 0.298143, 0.299120, 0.300098, 0.301075, 0.302053, 0.303030, \n0.304008, 0.304985, 0.305963, 0.306940, 0.307918, 0.308895, 0.309873, 0.310850, 0.311828, 0.312805, \n0.313783, 0.314761, 0.315738, 0.316716, 0.317693, 0.318671, 0.319648, 0.320626, 0.321603, 0.322581, \n0.323558, 0.324536, 0.325513, 0.326491, 0.327468, 0.328446, 0.329423, 0.330401, 0.331378, 0.332356, \n0.333333, 0.334311, 0.335288, 0.336266, 0.337243, 0.338221, 0.339198, 0.340176, 0.341153, 0.342131, \n0.343109, 0.344086, 0.345064, 0.346041, 0.347019, 0.347996, 0.348974, 0.349951, 0.350929, 0.351906, \n0.352884, 0.353861, 0.354839, 0.355816, 0.356794, 0.357771, 0.358749, 0.359726, 0.360704, 0.361681, \n0.362659, 0.363636, 0.364614, 0.365591, 0.366569, 0.367546, 0.368524, 0.369501, 0.370479, 0.371457, \n0.372434, 0.373412, 0.374389, 0.375367, 0.376344, 0.377322, 0.378299, 0.379277, 0.380254, 0.381232, \n0.382209, 0.383187, 0.384164, 0.385142, 0.386119, 0.387097, 0.388074, 0.389052, 0.390029, 0.391007, \n0.391984, 0.392962, 0.393939, 0.394917, 0.395894, 0.396872, 0.397849, 0.398827, 0.399804, 0.400782, \n0.401760, 0.402737, 0.403715, 0.404692, 0.405670, 0.406647, 0.407625, 0.408602, 0.409580, 0.410557, \n0.411535, 0.412512, 0.413490, 0.414467, 0.415445, 0.416422, 0.417400, 0.418377, 0.419355, 0.420332, \n0.421310, 0.422287, 0.423265, 0.424242, 0.425220, 0.426197, 0.427175, 0.428152, 0.429130, 0.430108, \n0.431085, 0.432063, 0.433040, 0.434018, 0.434995, 0.435973, 0.436950, 0.437928, 0.438905, 0.439883, \n0.440860, 0.441838, 0.442815, 0.443793, 0.444770, 0.445748, 0.446725, 0.447703, 0.448680, 0.449658, \n0.450635, 0.451613, 0.452590, 0.453568, 0.454545, 0.455523, 0.456500, 0.457478, 0.458456, 0.459433, \n0.460411, 0.461388, 0.462366, 0.463343, 0.464321, 0.465298, 0.466276, 0.467253, 0.468231, 0.469208, \n0.470186, 0.471163, 0.472141, 0.473118, 0.474096, 0.475073, 0.476051, 0.477028, 0.478006, 0.478983, \n0.479961, 0.480938, 0.481916, 0.482893, 0.483871, 0.484848, 0.485826, 0.486804, 0.487781, 0.488759, \n0.489736, 0.490714, 0.491691, 0.492669, 0.493646, 0.494624, 0.495601, 0.496579, 0.497556, 0.498534, \n0.499511, 0.500489, 0.501466, 0.502444, 0.503421, 0.504399, 0.505376, 0.506354, 0.507331, 0.508309, \n0.509286, 0.510264, 0.511241, 0.512219, 0.513196, 0.514174, 0.515152, 0.516129, 0.517107, 0.518084, \n0.519062, 0.520039, 0.521017, 0.521994, 0.522972, 0.523949, 0.524927, 0.525904, 0.526882, 0.527859, \n0.528837, 0.529814, 0.530792, 0.531769, 0.532747, 0.533724, 0.534702, 0.535679, 0.536657, 0.537634, \n0.538612, 0.539589, 0.540567, 0.541544, 0.542522, 0.543500, 0.544477, 0.545455, 0.546432, 0.547410, \n0.548387, 0.549365, 0.550342, 0.551320, 0.552297, 0.553275, 0.554252, 0.555230, 0.556207, 0.557185, \n0.558162, 0.559140, 0.560117, 0.561095, 0.562072, 0.563050, 0.564027, 0.565005, 0.565982, 0.566960, \n0.567937, 0.568915, 0.569892, 0.570870, 0.571848, 0.572825, 0.573803, 0.574780, 0.575758, 0.576735, \n0.577713, 0.578690, 0.579668, 0.580645, 0.581623, 0.582600, 0.583578, 0.584555, 0.585533, 0.586510, \n0.587488, 0.588465, 0.589443, 0.590420, 0.591398, 0.592375, 0.593353, 0.594330, 0.595308, 0.596285, \n0.597263, 0.598240, 0.599218, 0.600196, 0.601173, 0.602151, 0.603128, 0.604106, 0.605083, 0.606061, \n0.607038, 0.608016, 0.608993, 0.609971, 0.610948, 0.611926, 0.612903, 0.613881, 0.614858, 0.615836, \n0.616813, 0.617791, 0.618768, 0.619746, 0.620723, 0.621701, 0.622678, 0.623656, 0.624633, 0.625611, \n0.626588, 0.627566, 0.628543, 0.629521, 0.630499, 0.631476, 0.632454, 0.633431, 0.634409, 0.635386, \n0.636364, 0.637341, 0.638319, 0.639296, 0.640274, 0.641251, 0.642229, 0.643206, 0.644184, 0.645161, \n0.646139, 0.647116, 0.648094, 0.649071, 0.650049, 0.651026, 0.652004, 0.652981, 0.653959, 0.654936, \n0.655914, 0.656891, 0.657869, 0.658847, 0.659824, 0.660802, 0.661779, 0.662757, 0.663734, 0.664712, \n0.665689, 0.666667, 0.667644, 0.668622, 0.669599, 0.670577, 0.671554, 0.672532, 0.673509, 0.674487, \n0.675464, 0.676442, 0.677419, 0.678397, 0.679374, 0.680352, 0.681329, 0.682307, 0.683284, 0.684262, \n0.685239, 0.686217, 0.687195, 0.688172, 0.689150, 0.690127, 0.691105, 0.692082, 0.693060, 0.694037, \n0.695015, 0.695992, 0.696970, 0.697947, 0.698925, 0.699902, 0.700880, 0.701857, 0.702835, 0.703812, \n0.704790, 0.705767, 0.706745, 0.707722, 0.708700, 0.709677, 0.710655, 0.711632, 0.712610, 0.713587, \n0.714565, 0.715543, 0.716520, 0.717498, 0.718475, 0.719453, 0.720430, 0.721408, 0.722385, 0.723363, \n0.724340, 0.725318, 0.726295, 0.727273, 0.728250, 0.729228, 0.730205, 0.731183, 0.732160, 0.733138, \n0.734115, 0.735093, 0.736070, 0.737048, 0.738025, 0.739003, 0.739980, 0.740958, 0.741935, 0.742913, \n0.743891, 0.744868, 0.745846, 0.746823, 0.747801, 0.748778, 0.749756, 0.750733, 0.751711, 0.752688, \n0.753666, 0.754643, 0.755621, 0.756598, 0.757576, 0.758553, 0.759531, 0.760508, 0.761486, 0.762463, \n0.763441, 0.764418, 0.765396, 0.766373, 0.767351, 0.768328, 0.769306, 0.770283, 0.771261, 0.772239, \n0.773216, 0.774194, 0.775171, 0.776149, 0.777126, 0.778104, 0.779081, 0.780059, 0.781036, 0.782014, \n0.782991, 0.783969, 0.784946, 0.785924, 0.786901, 0.787879, 0.788856, 0.789834, 0.790811, 0.791789, \n0.792766, 0.793744, 0.794721, 0.795699, 0.796676, 0.797654, 0.798631, 0.799609, 0.800587, 0.801564, \n0.802542, 0.803519, 0.804497, 0.805474, 0.806452, 0.807429, 0.808407, 0.809384, 0.810362, 0.811339, \n0.812317, 0.813294, 0.814272, 0.815249, 0.816227, 0.817204, 0.818182, 0.819159, 0.820137, 0.821114, \n0.822092, 0.823069, 0.824047, 0.825024, 0.826002, 0.826979, 0.827957, 0.828935, 0.829912, 0.830890, \n0.831867, 0.832845, 0.833822, 0.834800, 0.835777, 0.836755, 0.837732, 0.838710, 0.839687, 0.840665, \n0.841642, 0.842620, 0.843597, 0.844575, 0.845552, 0.846530, 0.847507, 0.848485, 0.849462, 0.850440, \n0.851417, 0.852395, 0.853372, 0.854350, 0.855327, 0.856305, 0.857283, 0.858260, 0.859238, 0.860215, \n0.861193, 0.862170, 0.863148, 0.864125, 0.865103, 0.866080, 0.867058, 0.868035, 0.869013, 0.869990, \n0.870968, 0.871945, 0.872923, 0.873900, 0.874878, 0.875855, 0.876833, 0.877810, 0.878788, 0.879765, \n0.880743, 0.881720, 0.882698, 0.883675, 0.884653, 0.885630, 0.886608, 0.887586, 0.888563, 0.889541, \n0.890518, 0.891496, 0.892473, 0.893451, 0.894428, 0.895406, 0.896383, 0.897361, 0.898338, 0.899316, \n0.900293, 0.901271, 0.902248, 0.903226, 0.904203, 0.905181, 0.906158, 0.907136, 0.908113, 0.909091, \n0.910068, 0.911046, 0.912023, 0.913001, 0.913978, 0.914956, 0.915934, 0.916911, 0.917889, 0.918866, \n0.919844, 0.920821, 0.921799, 0.922776, 0.923754, 0.924731, 0.925709, 0.926686, 0.927664, 0.928641, \n0.929619, 0.930596, 0.931574, 0.932551, 0.933529, 0.934506, 0.935484, 0.936461, 0.937439, 0.938416, \n0.939394, 0.940371, 0.941349, 0.942326, 0.943304, 0.944282, 0.945259, 0.946237, 0.947214, 0.948192, \n0.949169, 0.950147, 0.951124, 0.952102, 0.953079, 0.954057, 0.955034, 0.956012, 0.956989, 0.957967, \n0.958944, 0.959922, 0.960899, 0.961877, 0.962854, 0.963832, 0.964809, 0.965787, 0.966764, 0.967742, \n0.968719, 0.969697, 0.970674, 0.971652, 0.972630, 0.973607, 0.974585, 0.975562, 0.976540, 0.977517, \n0.978495, 0.979472, 0.980450, 0.981427, 0.982405, 0.983382, 0.984360, 0.985337, 0.986315, 0.987292, \n0.988270, 0.989247, 0.990225, 0.991202, 0.992180, 0.993157, 0.994135, 0.995112, 0.996090, 0.997067, \n0.998045, 0.999022, 1.000000, \n};\n\n\nstatic inline float floatfrom10bitint(int n)\n{\n  return pgm_read_float(floattable+constrain(n,0,1023));\n}\n\ninline void digitalPullup(byte pin, boolean b) { \n  pinMode(pin, INPUT); \n  digitalWrite(pin, b?HIGH:LOW); \n}\n\n#if defined(__AVR_ATmega1280__)\n#define MAXADC 16\nconst int numberOfArduinoDigitalPins=54;\ninline void analogPullup(byte pin, boolean b) { \n  digitalPullup(pin+54,b); \n}\ninline void analogOutWrite(byte pin, byte b) {\n  pinMode(pin+54, OUTPUT);  \n  digitalWrite(pin+54,b);\n}\n\n#else\n// teensy++\n#if defined(__AVR_AT90USB646__) || defined(__AVR_AT90USB1286__)\n\n#define MAXADC 8\nconst int numberOfArduinoDigitalPins=38;\ninline void analogPullup(byte pin, boolean b) { \n   pinMode(38+pin,b?INPUT_PULLUP: INPUT); \n}\ninline void analogOutWrite(byte pin, byte b) {\n  pinMode(38+pin, OUTPUT);  // change directions of an analog pin\n  digitalWrite(38+pin,b); \n}\n#else\n//AT90USB1286 teensy++\n#if defined(__AVR_ATmega32U4__)\n//teensy 2.0\n#define MAXADC 12\nconst int numberOfArduinoDigitalPins=11; // actually the teensy 2.0 has two more non contiguously addressed (22 and 23)\ninline void analogPullup(byte pin, boolean b) { \n if(pin==11)\n    pin = -1; // ouch read the diagram carefully! http://www.pjrc.com/teensy/pinout.html\n   pinMode(21-pin,b?INPUT_PULLUP: INPUT); \n}\ntypedef enum {\n  endOfpinlist=-1, a0=14,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15 } \npinnames;\ninline void analogOutWrite(byte pin, byte b) {\n  if(pin==11)\n    pin = -1; // ouch\n  pinMode(21-pin, OUTPUT);  // change directions of an analog pin\n  digitalWrite(21-pin,b); \n}\n#else\n//6 or 8 depending\n#define MAXADC 8\nconst int numberOfArduinoDigitalPins=13;\ninline void analogPullup(byte pin, boolean b) { \n  digitalPullup(pin+14,b?HIGH:LOW); \n}\n\ninline void analogOutWrite(byte pin, byte b) {\n \n  pinMode(pin+14, OUTPUT);  // change directions of an analog pin\n  digitalWrite(pin+14,b); \n}\n#endif\n#endif\n#endif\n\n\nvoid setup() {\n  Serial.begin(57600);\n}\nconst int dtime=0;\n#define BANDGAPREF 14   // special indicator that we want to measure the bandgap\n\nvoid loop(){\n // analog inputs\n  int adcs[MAXADC];\n  float fbuf[MAXADC];\n  int i;\n  \n  for(i=0;i<MAXADC;++i)\n    analogPullup(i,false);\n  for(i=0;i<MAXADC;++i)\n    adcs[i] = analogRead(i); \n  for(i=0;i<MAXADC;++i)\n    fbuf[i] = floatfrom10bitint(adcs[i]);\n  sendOSCfloats(\"/analog\", fbuf, MAXADC);  \n \n  for(i=0;i<MAXADC;++i)\n    analogPullup(i,true);\n  for(i=0;i<MAXADC;++i)\n    adcs[i] = analogRead(i); \n  for(i=0;i<MAXADC;++i)\n    fbuf[i] = floatfrom10bitint(adcs[i]);\n  sendOSCfloats(\"/up/analog\", fbuf, MAXADC);  \n\n   // temperature\n  // power supply voltage\n  // (clock rate)\n  //digital pins\n  boolean arduinodigitalpins[numberOfArduinoDigitalPins];\n  for(i=0;i<numberOfArduinoDigitalPins;++i)\n    digitalPullup(i,false);\n  for(i=0;i<numberOfArduinoDigitalPins;++i)\n    arduinodigitalpins[i] = digitalRead(i);\n sendOSCbits(\"/digital\", arduinodigitalpins, numberOfArduinoDigitalPins);\n  \n  for(i=0;i<numberOfArduinoDigitalPins;++i)\n    digitalPullup(i,true);\n  for(i=0;i<numberOfArduinoDigitalPins;++i)\n    arduinodigitalpins[i] = digitalRead(i);\n sendOSCbits(\"/up/digital\", arduinodigitalpins, numberOfArduinoDigitalPins);\n \n #if defined(__AVR_ATmega32U4__)\nSerial.send_now(); \n#endif\n #if !defined(__AVR_ATmega8__)\n\n// temperature and power supply measurement on some Arduinos \n    // powersupply\n    int result;\n  // Read 1.1V reference against AVcc\n#if defined(__AVR_ATmega32U4__)\n  ADMUX = 0x40 | _BV(MUX4)| _BV(MUX3) | _BV(MUX2) | _BV(MUX1);\n  ADCSRB =  0;\n  //  ADCSRB = DEFAULT_ADCSRB | (1<<MUX5);\n#elif  defined(__AVR_AT90USB646__) || defined(__AVR_AT90USB1286__)    || defined(__AVR_ATmega1280__) \n  ADMUX = 0x40| _BV(MUX4) | _BV(MUX3) | _BV(MUX2) | _BV(MUX1) ;\n    ADCSRB =  0;\n#else\n  ADMUX = _BV(REFS0) | _BV(MUX3) | _BV(MUX2) | _BV(MUX1);\n#endif\n  delayMicroseconds(300); // wait for Vref to settle\n  ADCSRA |= _BV(ADSC); // Convert\n  while (bit_is_set(ADCSRA,ADSC));\n   result = ADCL;\n  result |= ADCH<<8;\n\n\n  float supplyvoltage = 1.1264 *1023 / result;\n  sendOSCfloats(\"/power\", &supplyvoltage, 1);\n#endif\n\n#if defined(__AVR_ATmega32U4__) ||    (!defined(__AVR_ATmega1280__) && !defined(__AVR_ATmega8__) && !defined(__AVR_AT90USB646__) && !defined(__AVR_AT90USB1286__))\n // temperature\n\n#if defined(__AVR_ATmega32U4__)\n  ADMUX =  _BV(REFS1) | _BV(REFS0) | _BV(MUX2) | _BV(MUX1) | _BV(MUX0);\n   ADCSRB =  _BV(MUX5);\n#else\n  ADMUX = _BV(REFS1) | _BV(REFS0) | _BV(MUX3);\n#endif\n  \n\n  delayMicroseconds(200); // wait for Vref to settle\n  ADCSRA |= _BV(ADSC); // Convert\n  while (bit_is_set(ADCSRA,ADSC));\n  result = ADCL;\n  result |= ADCH<<8;\n\n   float temp= result/1023.0;\n     sendOSCfloats(\"/temperature\", &temp, 1);\n   analogReference(DEFAULT);\n #endif\n \n  long l=micros();\n  sendOSClongs(\"/microseconds\",&l,1);\n#if defined(__AVR_ATmega32U4__)\nSerial.send_now(); \n#endif\n}\n"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-43",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 608.0, 165.0, 330.0, 104.0 ],
					"text" : "o.io.oscuino.help\n\nDisplay pin state for Arduino and related microcontrollers\nas reported by OSC 1.1 slip wrapped serial USB messages\n\nCopyright 2009,2011 Adrian Freed.\nAll Rights Reserved"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 76.0, 16.0, 75.0, 20.0 ],
					"text" : "o.io.oscuino"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 520.0, 110.0, 150.0, 20.0 ],
					"text" : "uncalibrated"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 649.0, 110.0, 150.0, 20.0 ],
					"text" : "Volts"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 769.0, 108.0, 150.0, 20.0 ],
					"text" : "microseconds"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 549.0, 142.0, 150.0, 20.0 ],
					"text" : "pullups"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 385.0, 139.0, 150.0, 20.0 ],
					"text" : "digital pins no pullups"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 218.0, 136.0, 150.0, 20.0 ],
					"text" : "pullups"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 137.0, 150.0, 20.0 ],
					"text" : "adc no pullups"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 348.0, 172.0, 75.0 ],
					"text" : "notice on the teensy 2.0 the penultimate adc value seems stuck:\nStrangely the led is wired to that one!"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 764.0, 84.0, 93.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 200.0, 159.0, 172.0, 163.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"size" : 12
				}

			}
, 			{
				"box" : 				{
					"disabled" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ],
					"id" : "obj-9",
					"itemtype" : 1,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 558.0, 178.0, 103.0, 866.0 ],
					"size" : 54,
					"values" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ]
				}

			}
, 			{
				"box" : 				{
					"disabled" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ],
					"id" : "obj-74",
					"itemtype" : 1,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 392.0, 167.0, 103.0, 866.0 ],
					"size" : 54,
					"values" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 530.0, 87.0, 90.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 649.0, 84.0, 90.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 13.0, 158.0, 172.0, 163.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"size" : 12
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "", "", "", "", "FullPacket" ],
					"patching_rect" : [ 76.0, 56.0, 434.0, 20.0 ],
					"text" : "o.route /analog /up/analog /digital /up/digital /temperature /power /microseconds"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.io.oscuino.maxpat",
				"bootpath" : "/Users/Yotam/Software/svn/cnmat/trunk/max/externals/odot/patches/abstractions",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "slipOSC.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "OpenSoundControl.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
