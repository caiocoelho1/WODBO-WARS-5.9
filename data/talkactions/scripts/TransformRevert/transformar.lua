local config = {
--[vocation id] = { level, nova voc, looktype, efeito}
-- Goku
[1] = { 30, 2, 3, 118},
[2] = { 50, 3, 4, 114},
[3] = { 75, 4, 5, 114},
[4] = { 100, 5, 6, 121},
[5] = { 150, 6, 7, 114},
[6] = { 180, 7, 8, 116},
[7] = { 200, 8, 9, 114},

[9] = { 50, 10, 11, 114},
[10] = { 100, 11, 12, 114},
[11] = { 150, 12, 13, 114},
[12] = { 200, 13, 14, 125},
[13] = { 250, 14, 15, 121},
[14] = { 400, 15, 16, 34},
[15] = { 600, 16, 17, 32},
[16] = { 600, 473, 630, 32},

-- Vegeta
[17] = { 30, 18, 20, 34},
[18] = { 50, 19, 21, 34},
[19] = { 75, 20, 22, 116},
[20] = { 100, 21, 6, 121},
[21] = { 150, 22, 23, 114},
[22] = { 200, 23, 24, 114},

[24] = { 50, 25, 26, 116},
[25] = { 100, 26, 27, 114},
[26] = { 150, 27, 28, 114},
[27] = { 200, 28, 29, 113},
[28] = { 250, 29, 15, 121},
[29] = { 400, 30, 30, 34},
[30] = { 600, 31, 32, 32},
[31] = { 600, 474, 649, 41},

-- Piccolo
[32] = { 50, 33, 34, 122},
[33] = { 100, 34, 35, 31},
[34] = { 150, 35, 36, 31},
[35] = { 200, 36, 37, 119},

[37] = { 50, 38, 39, 122},
[38] = { 100, 39, 40, 31},
[39] = { 150, 40, 41, 31},
[40] = { 200, 41, 42, 31},
[41] = { 250, 42, 43, 119},
[42] = { 400, 43, 44, 31},
[43] = { 600, 44, 643, 31},

-- C17
[45] = { 50, 46, 47, 34},
[46] = { 100, 47, 48, 34},
[47] = { 150, 48, 51, 34},
[48] = { 200, 49, 49, 34},

[50] = { 50, 51, 47, 34},
[51] = { 100, 52, 48, 34},
[52] = { 150, 53, 51, 34},
[53] = { 200, 54, 52, 34},
[54] = { 400, 55, 53, 34},
[55] = { 600, 56, 54, 34},

-- Gohan
[57] = { 30, 58, 56, 34},
[58] = { 50, 59, 57, 34},
[59] = { 100, 60, 58, 114},
[60] = { 150, 61, 59, 116},
[61] = { 175, 62, 60, 127},
[62] = { 200, 63, 61, 114},

[64] = { 50, 65, 63, 116},
[65] = { 100, 66, 64, 116},
[66] = { 150, 67, 65, 114},
[67] = { 200, 68, 66, 124},
[68] = { 400, 69, 67, 34},
[69] = { 600, 70, 68, 34},

-- Trunks
[71] = { 50, 72, 70, 114},
[72] = { 100, 73, 71, 116},
[73] = { 150, 74, 72, 114},
[74] = { 200, 75, 73, 114},

[76] = { 50, 77, 75, 114},
[77] = { 100, 78, 76, 114},
[78] = { 150, 79, 77, 114},
[79] = { 200, 80, 78, 112},
[80] = { 400, 81, 79, 34},
[81] = { 400, 82, 80, 34},
[82] = { 600, 490, 530, 32},

-- Cell
[83] = { 50, 84, 82, 119},
[84] = { 100, 85, 83, 119},
[85] = { 150, 86, 84, 119},
[86] = { 200, 87, 85, 31},

[88] = { 50, 89, 82, 119},
[89] = { 100, 90, 83, 119},
[90] = { 150, 91, 84, 119},
[91] = { 200, 92, 85, 31},
[92] = { 400, 93, 86, 34},
[93] = { 600, 94, 87, 34},

-- Freeza
[95] = { 30, 96, 89, 123},
[96] = { 50, 97, 90, 117},
[97] = { 75, 98, 91, 117},
[98] = { 100, 99, 92, 117},
[99] = { 150, 100, 93, 117},
[100] = { 200, 101, 94, 34},

[102] = { 30, 103, 89, 123},
[103] = { 50, 104, 90, 117},
[104] = { 75, 105, 91, 117},
[105] = { 100, 106, 92, 117},
[106] = { 150, 107, 93, 117},
[107] = { 200, 108, 95, 112},
[108] = { 400, 109, 97, 34},
[109] = { 600, 110, 96, 34},

-- Majin Boo
[111] = { 30, 112, 99, 29},
[112] = { 50, 113, 100, 30},
[113] = { 75, 114, 101, 30},
[114] = { 100, 115, 102, 30},
[115] = { 150, 116, 103, 30},
[116] = { 200, 117, 104, 29},

[118] = { 30, 119, 99, 29},
[119] = { 50, 120, 100, 30},
[120] = { 75, 121, 101, 30},
[121] = { 100, 122, 102, 30},
[122] = { 150, 123, 103, 30},
[123] = { 200, 124, 104, 29},
[124] = { 400, 125, 105, 29},
[125] = { 600, 126, 106, 29},
[126] = { 600, 475, 107, 34},

-- Broly
[127] = { 50, 128, 109, 34},
[128] = { 100, 129, 110, 34},
[129] = { 150, 130, 111, 114},
[130] = { 200, 131, 112, 114},

[132] = { 50, 133, 114, 115},
[133] = { 100, 134, 115, 114},
[134] = { 150, 135, 116, 114},
[135] = { 200, 136, 117, 126},
[136] = { 250, 137, 118, 121},
[137] = { 400, 138, 119, 34},
[138] = { 600, 139, 120, 32},

-- C18
[140] = { 50, 141, 121, 34},
[141] = { 100, 142, 122, 34},
[142] = { 150, 143, 123, 34},
[143] = { 200, 144, 123, 34},

[145] = { 50, 146, 121, 34},
[146] = { 100, 147, 122, 34},
[147] = { 150, 148, 125, 34},
[148] = { 200, 149, 124, 34},
[149] = { 400, 150, 126, 29},
[150] = { 600, 151, 127, 29},

-- Uub
[152] = { 50, 153, 129, 117},
[153] = { 100, 154, 130, 117},
[154] = { 150, 155, 131, 117},
[155] = { 200, 156, 132, 117},

[157] = { 50, 158, 129, 112},
[158] = { 100, 159, 130, 112},
[159] = { 150, 160, 131, 112},
[160] = { 200, 161, 132, 112},
[161] = { 400, 162, 133, 34},
[162] = { 600, 163, 134, 34},

-- Goten
[164] = { 30, 165, 136, 114},
[165] = { 50, 166, 137, 121},
[166] = { 75, 167, 138, 121},
[167] = { 100, 168, 139, 121},
[168] = { 150, 169, 140, 114},
[169] = { 200, 170, 141, 114},

[171] = { 50, 172, 143, 114},
[172] = { 100, 173, 144, 121},
[173] = { 150, 174, 145, 114},
[174] = { 200, 175, 146, 114},
[175] = { 400, 176, 147, 113},
[176] = { 600, 177, 148, 112},

-- Chibi Trunks
[178] = { 30, 179, 150, 114},
[179] = { 50, 180, 137, 121},
[180] = { 75, 181, 138, 121},
[181] = { 100, 182, 139, 121},
[182] = { 150, 183, 140, 114},
[183] = { 200, 184, 141, 114},

[185] = { 50, 186, 152, 114},
[186] = { 100, 187, 144, 121},
[187] = { 150, 188, 145, 114},
[188] = { 200, 189, 146, 114},
[189] = { 400, 190, 147, 113},
[190] = { 600, 191, 148, 112},

-- Cooler
[192] = { 50, 193, 154, 113},
[193] = { 75, 194, 155, 113},
[194] = { 100, 195, 156, 113},
[195] = { 150, 196, 157, 113},
[196] = { 200, 197, 158, 34},

[198] = { 50, 199, 154, 113},
[199] = { 75, 200, 155, 113},
[200] = { 100, 201, 159, 115},
[201] = { 150, 202, 161, 112},
[202] = { 200, 203, 160, 113},
[203] = { 400, 204, 532, 32},
[204] = { 400, 493, 162, 34},
[493] = { 600, 205, 163, 34},

-- Dende
[206] = { 50, 207, 165, 119},
[207] = { 100, 208, 166, 119},
[208] = { 150, 209, 167, 119},
[209] = { 200, 210, 168, 119},

[211] = { 50, 212, 170, 119},
[212] = { 100, 213, 171, 119},
[213] = { 150, 214, 172, 119},
[214] = { 200, 215, 172, 119},
[215] = { 400, 216, 173, 31},
[216] = { 600, 217, 174, 31},

-- Tsuful
[218] = { 50, 219, 176, 114},
[219] = { 100, 220, 177, 115},
[220] = { 150, 221, 178, 114},
[221] = { 200, 222, 179, 114},

[223] = { 50, 224, 181, 114},
[224] = { 100, 225, 182, 116},
[225] = { 150, 226, 183, 116},
[226] = { 200, 227, 185, 34},
[227] = { 400, 228, 186, 34},
[228] = { 600, 229, 187, 34},

-- Bardock
[230] = { 30, 231, 189, 34},
[231] = { 50, 232, 190, 34},
[232] = { 100, 233, 191, 116},
[233] = { 150, 234, 192, 116},
[234] = { 200, 235, 193, 114},

[236] = { 50, 237, 189, 34},
[237] = { 100, 238, 195, 34},
[238] = { 150, 239, 196, 114},
[239] = { 200, 240, 197, 112},
[240] = { 250, 241, 118, 121},
[241] = { 400, 242, 198, 34},
[242] = { 600, 243, 199, 34},

-- Kuririn
[244] = { 50, 245, 201, 116},
[245] = { 100, 246, 202, 116},
[246] = { 150, 247, 203, 116},
[247] = { 200, 248, 204, 116},

[249] = { 50, 250, 205, 116},
[250] = { 100, 251, 206, 116},
[251] = { 150, 252, 206, 116},
[252] = { 200, 253, 207, 112},
[253] = { 400, 254, 208, 112},
[254] = { 600, 255, 209, 34},

-- Pan
[256] = { 50, 257, 211, 116},
[257] = { 100, 258, 212, 116},
[258] = { 150, 259, 213, 114},
[259] = { 200, 260, 214, 114},

[261] = { 50, 262, 213, 114},
[262] = { 100, 263, 214, 114},
[263] = { 150, 264, 215, 112},
[264] = { 200, 265, 216, 112},
[265] = { 400, 266, 217, 34},
[266] = { 600, 267, 218, 34},

-- Kaio
[268] = { 50, 269, 220, 113},
[269] = { 100, 270, 221, 113},
[270] = { 150, 271, 222, 113},
[271] = { 200, 272, 222, 113},

[273] = { 50, 274, 222, 113},
[274] = { 100, 275, 223, 113},
[275] = { 150, 276, 223, 113},
[276] = { 200, 277, 224, 113},
[277] = { 400, 278, 225, 113},
[278] = { 600, 279, 226, 34},

-- Videl
[280] = { 50, 281, 228, 116},
[281] = { 100, 282, 229, 116},
[282] = { 150, 283, 230, 116},
[283] = { 200, 284, 231, 115},

[285] = { 50, 286, 228, 116},
[286] = { 100, 287, 229, 116},
[287] = { 150, 288, 230, 116},
[288] = { 200, 289, 231, 115},
[289] = { 400, 290, 232, 115},
[290] = { 600, 291, 233, 112},

-- Janemba
[292] = { 50, 293, 235, 34},
[293] = { 100, 294, 236, 34},
[294] = { 150, 295, 237, 34},
[295] = { 200, 296, 238, 113},

[297] = { 50, 298, 235, 34},
[298] = { 100, 299, 236, 34},
[299] = { 150, 300, 237, 34},
[300] = { 200, 301, 238, 113},
[301] = { 400, 302, 239, 113},
[302] = { 600, 303, 240, 34},
[303] = { 600, 491, 241, 34},

-- Tenshinhan
[304] = { 50, 305, 243, 116},
[305] = { 100, 306, 244, 116},
[306] = { 150, 307, 244, 116},
[307] = { 200, 308, 245, 116},

[309] = { 50, 310, 247, 116},
[310] = { 100, 311, 248, 116},
[311] = { 150, 312, 248, 114},
[312] = { 200, 313, 249, 112},
[313] = { 400, 314, 250, 34},
[314] = { 600, 315, 251, 34},

-- Jenk
[316] = { 50, 317, 253, 116},
[317] = { 100, 318, 254, 114},
[318] = { 150, 319, 255, 114},
[319] = { 200, 320, 256, 114},

[321] = { 50, 322, 258, 34},
[322] = { 100, 323, 259, 34},
[323] = { 150, 324, 260, 112},
[324] = { 200, 325, 261, 112},
[325] = { 400, 326, 262, 34},
[326] = { 600, 327, 263, 115},

-- Raditz
[328] = { 50, 329, 265, 116},
[329] = { 100, 330, 266, 114},
[330] = { 150, 331, 267, 116},
[331] = { 200, 332, 268, 114},

[333] = { 50, 334, 266, 114},
[334] = { 100, 335, 267, 116},
[335] = { 150, 336, 268, 114},
[336] = { 200, 337, 269, 112},
[337] = { 400, 338, 270, 34},
[338] = { 600, 339, 271, 34},

-- C16
[340] = { 50, 341, 273, 34},
[341] = { 100, 342, 274, 34},
[342] = { 150, 343, 275, 34},
[343] = { 200, 344, 276, 34},

[345] = { 50, 346, 273, 34},
[346] = { 100, 347, 274, 34},
[347] = { 150, 348, 275, 34},
[348] = { 200, 349, 276, 34},
[349] = { 400, 350, 278, 34},
[350] = { 600, 351, 279, 34},

-- Turles
[352] = { 50, 353, 281, 34},
[353] = { 100, 354, 282, 34},
[354] = { 150, 355, 283, 114},
[355] = { 200, 356, 284, 114},

[357] = { 50, 358, 286, 34},
[358] = { 100, 359, 287, 34},
[359] = { 150, 360, 288, 114},
[360] = { 200, 361, 289, 112},
[361] = { 400, 362, 290, 34},
[362] = { 600, 363, 291, 34},

-- Bulma
[364] = { 50, 365, 293, 116},
[365] = { 100, 366, 294, 116},
[366] = { 150, 367, 295, 116},
[367] = { 200, 368, 295, 115},

[369] = { 50, 370, 297, 114},
[370] = { 100, 371, 297, 114},
[371] = { 150, 372, 298, 114},
[372] = { 200, 373, 299, 112},
[373] = { 400, 374, 300, 115},
[374] = { 600, 375, 301, 115},

-- Shenron
[376] = { 50, 377, 303, 34},
[377] = { 100, 378, 304, 34},
[378] = { 150, 379, 305, 34},
[379] = { 200, 380, 305, 121},

[381] = { 50, 382, 303, 34},
[382] = { 100, 383, 304, 34},
[383] = { 150, 384, 305, 34},
[384] = { 200, 385, 305, 121},
[385] = { 400, 386, 306, 34},
[386] = { 600, 387, 307, 121},

-- Vegetto
[388] = { 50, 389, 309, 114},
[389] = { 100, 390, 310, 114},
[390] = { 150, 391, 311, 114},
[391] = { 200, 392, 311, 114},

[393] = { 50, 394, 309, 114},
[394] = { 100, 395, 310, 114},
[395] = { 150, 396, 311, 114},
[396] = { 200, 397, 312, 121},
[397] = { 400, 398, 314, 121},
[398] = { 600, 399, 315, 32},

-- Tapion
[400] = { 50, 401, 317, 111},
[401] = { 100, 402, 318, 116},
[402] = { 150, 403, 319, 111},
[403] = { 200, 404, 320, 112},

[405] = { 50, 406, 322, 116},
[406] = { 100, 407, 323, 112},
[407] = { 150, 408, 324, 116},
[408] = { 175, 409, 325, 115},
[409] = { 200, 410, 326, 115},
[410] = { 400, 411, 327, 112},
[411] = { 600, 412, 329, 34},
[412] = { 600, 476, 528, 112},

-- Kame
[413] = { 50, 414, 331, 116},
[414] = { 100, 415, 332, 116},
[415] = { 150, 416, 333, 116},
[416] = { 200, 417, 334, 114},

[418] = { 50, 419, 336, 114},
[419] = { 100, 420, 337, 116},
[420] = { 150, 421, 338, 112},
[421] = { 200, 422, 339, 114},
[422] = { 400, 423, 340, 34},
[423] = { 600, 424, 341, 34},

-- King Vegeta
[425] = { 50, 426, 343, 116},
[426] = { 100, 427, 344, 114},
[427] = { 150, 428, 345, 114},
[428] = { 200, 429, 346, 114},

[430] = { 50, 431, 348, 114},
[431] = { 100, 432, 348, 114},
[432] = { 150, 433, 349, 112},
[433] = { 200, 434, 350, 115},
[434] = { 400, 435, 351, 112},
[435] = { 600, 436, 352, 32},

-- Kagome
[437] = { 50, 438, 354, 116},
[438] = { 100, 439, 355, 114},
[439] = { 150, 440, 355, 114},
[440] = { 200, 441, 356, 114},

[442] = { 50, 443, 358, 114},
[443] = { 100, 444, 359, 114},
[444] = { 150, 445, 359, 114},
[445] = { 200, 446, 360, 114},
[446] = { 400, 447, 361, 112},
[447] = { 600, 448, 744, 112},

-- Zaiko
[449] = { 50, 450, 364, 112},
[450] = { 100, 451, 365, 112},
[451] = { 150, 452, 366, 114},
[452] = { 200, 453, 367, 114},

[454] = { 50, 455, 369, 114},
[455] = { 100, 456, 370, 114},
[456] = { 150, 457, 371, 111},
[457] = { 200, 458, 372, 111},
[458] = { 400, 459, 373, 34},
[459] = { 600, 460, 476, 34},
[460] = { 600, 477, 374, 32},

-- Chilled
[461] = { 50, 462, 376, 113},
[462] = { 100, 463, 377, 113},
[463] = { 150, 464, 378, 113},
[464] = { 200, 465, 379, 34},

[466] = { 50, 467, 376, 113},
[467] = { 100, 468, 377, 113},
[468] = { 150, 469, 378, 113},
[469] = { 200, 470, 381, 29},
[470] = { 400, 471, 380, 29},
[471] = { 600, 472, 382, 29},
[472] = { 600, 492, 531, 29},

-- Bills
[478] = { 50, 479, 516, 34},
[479] = { 100, 480, 516, 34},
[480] = { 150, 481, 515, 34},
[481] = { 200, 482, 513, 34},

[483] = { 50, 484, 515, 34},
[484] = { 100, 485, 515, 34},
[485] = { 150, 486, 515, 34},
[486] = { 200, 487, 513, 34},
[487] = { 400, 488, 512, 34},
[488] = { 600, 489, 518, 34},

-- Wiss
[510] = { 50, 511, 650, 9},
[511] = { 100, 512, 651, 9},
[512] = { 150, 513, 652, 9},
[513] = { 200, 514, 652, 9},

[515] = { 50, 516, 650, 9},
[516] = { 100, 517, 651, 9},
[517] = { 150, 518, 652, 9},
[518] = { 200, 519, 653, 9},
[519] = { 400, 520, 654, 9},
[520] = { 600, 521, 655, 9},

-- Goku God
[522] = { 50, 523, 623, 9},
[523] = { 100, 524, 624, 9},
[524] = { 150, 525, 625, 9},
[525] = { 200, 526, 626, 9},

[527] = { 50, 528, 627, 9},
[528] = { 100, 529, 627, 9},
[529] = { 150, 530, 627, 9},
[530] = { 200, 531, 628, 9},
[531] = { 400, 532, 628, 9},
[532] = { 600, 533, 629, 9},

-- Bills Evolution
[534] = { 50, 535, 672, 60},
[535] = { 100, 536, 667, 60},
[536] = { 150, 537, 669, 60},
[537] = { 200, 538, 671, 60},

[539] = { 50, 540, 668, 60},
[540] = { 100, 541, 670, 60},
[541] = { 150, 542, 664, 60},
[542] = { 200, 543, 665, 60},
[543] = { 400, 544, 663, 60},
[544] = { 600, 545, 662, 60},

-- Yamcha
[546] = { 50, 547, 674, 9},
[547] = { 100, 548, 675, 9},
[548] = { 150, 549, 676, 9},
[549] = { 200, 550, 677, 9},

[551] = { 50, 552, 678, 9},
[552] = { 100, 553, 679, 9},
[553] = { 150, 554, 680, 9},
[554] = { 200, 555, 681, 9},
[555] = { 400, 556, 683, 9},
[556] = { 600, 557, 684, 9},

-- Evolution Frezza
[558] = { 50, 559, 697, 9},
[559] = { 100, 560, 702, 9},
[560] = { 150, 561, 700, 9},
[561] = { 200, 562, 700, 9},

[563] = { 50, 564, 704, 9},
[564] = { 100, 565, 703, 9},
[565] = { 150, 566, 701, 9},
[566] = { 200, 567, 698, 9},
[567] = { 400, 568, 699, 9},
[568] = { 600, 569, 695, 9},

-- Evolution Frezza
[570] = { 50, 571, 712, 9},
[571] = { 100, 572, 712, 9},
[572] = { 150, 573, 716, 9},
[573] = { 200, 574, 708, 9},

[575] = { 50, 576, 712, 9},
[576] = { 100, 577, 709, 9},
[577] = { 150, 578, 713, 9},
[578] = { 200, 579, 710, 9},
[579] = { 400, 580, 711, 9},
[580] = { 600, 581, 707, 9},

-- c13
[582] = { 50, 583, 723, 9},
[583] = { 100, 584, 723, 9},
[584] = { 150, 585, 719, 9},
[585] = { 200, 586, 720, 9},

[587] = { 50, 588, 720, 9},
[588] = { 100, 589, 724, 9},
[589] = { 150, 590, 718, 9},
[590] = { 200, 591, 718, 9},
[591] = { 400, 592, 721, 9},
[592] = { 600, 593, 725, 9},

-- Xicor
[594] = { 50, 595, 742, 60},
[595] = { 100, 596, 738, 60},
[596] = { 150, 597, 738, 60},
[597] = { 200, 598, 734, 60},

[599] = { 50, 600, 738, 60},
[600] = { 100, 601, 740, 60},
[601] = { 150, 602, 735, 60},
[602] = { 200, 603, 741, 60},
[603] = { 400, 604, 739, 60},
[604] = { 600, 605, 737, 60},

-- C20 Android
[609] = { 50, 610, 769, 60},
[610] = { 100, 611, 769, 60},
[611] = { 150, 612, 771, 60},
[612] = { 200, 613, 773, 60},

[614] = { 50, 615, 774, 60},
[615] = { 100, 616, 770, 60},
[616] = { 150, 617, 773, 60},
[617] = { 200, 618, 774, 60},
[618] = { 400, 619, 775, 60},
[619] = { 600, 620, 772, 60},

-- Paikuhan
[621] = { 50, 622, 763, 60},
[622] = { 100, 623, 763, 60},
[623] = { 150, 624, 762, 60},
[624] = { 200, 625, 764, 60},

[626] = { 50, 627, 762, 60},
[627] = { 100, 628, 761, 60},
[628] = { 150, 629, 764, 60},
[629] = { 200, 630, 765, 60},
[630] = { 400, 631, 765, 60},
[631] = { 600, 632, 766, 60},

-- Mr Satan
[634] = { 50, 635, 790, 60},
[635] = { 100, 636, 790, 60},
[636] = { 150, 637, 791, 60},
[637] = { 200, 638, 792, 60},

[639] = { 50, 640, 792, 60},
[640] = { 100, 641, 796, 60},
[641] = { 150, 642, 796, 60},
[642] = { 200, 643, 797, 60},
[643] = { 400, 644, 795, 60},
[644] = { 600, 645, 794, 60},

-- C8
[646] = { 50, 647, 778, 60},
[647] = { 100, 648, 779, 60},
[648] = { 150, 649, 780, 60},
[649] = { 200, 650, 781, 60},

[651] = { 50, 652, 782, 60},
[652] = { 100, 653, 783, 60},
[653] = { 150, 654, 786, 60},
[654] = { 200, 655, 787, 60},
[655] = { 400, 656, 788, 60},
[656] = { 600, 657, 789, 60},

-- Vados
[658] = { 50, 659, 777, 60},
[659] = { 100, 660, 777, 60},
[660] = { 150, 661, 802, 60},
[661] = { 200, 662, 802, 60},

[663] = { 50, 664, 804, 60},
[664] = { 100, 665, 804, 60},
[665] = { 150, 666, 803, 60},
[666] = { 200, 667, 803, 60},
[667] = { 400, 668, 801, 60},
[668] = { 600, 669, 800, 60}
}
function onSay(cid, words, param, channel)
local voc = config[getPlayerVocation(cid)]
if voc then
if getPlayerLevel(cid) >= voc[1] then
doPlayerSetVocation(cid, voc[2])
doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Voce se transformou!")
doCreatureSay(cid, "Transformar", 19)
local outfit = {lookType = voc[3]}
doCreatureChangeOutfit(cid, outfit)
doSendMagicEffect(getCreaturePosition(cid), voc[4])
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Voce precisa estar no level " .. voc[1] .. " para transformar.")
end
else
doPlayerSendCancel(cid, "Nao � poss�vel se transformar.")
end
return true
end