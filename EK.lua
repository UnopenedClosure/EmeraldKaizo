require "math"

nature = {"Hardy","Lonely","Brave","Adamant","Naughty",
			"Bold","Docile","Relaxed","Impish","Lax",
			"Timid","Hasty","Serious","Jolly","Naive",
			"Modest","Mild","Quiet","Bashful","Rash",
			"Calm","Gentle","Sassy","Careful","Quirky"}

item = {'Master Ball',
'Ultra Ball',
'Great Ball',
'Poke Ball', 
'Safari Ball',
'Net Ball',   
'Dive Ball',
'Nest Ball',  
'Repeat Ball',
'Timer Ball', 
'Luxury Ball',
'Premier Ball',
' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',
'Energy Powder',
' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',
'Berry Juice',
' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',
'Sun Stone',
'Moon Stone',
'Fire Stone',
'Thunder Stone',
'Water Stone',
'Leaf Stone',
' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',
'Cheri Berry',
'Chesto Berry',
'Pecha Berry',
'Rawst Berry',
'Aspear Berry',
'Leppa Berry',
'Oran Berry',
'Persim Berry',
'Lum Berry',
'Sitrus Berry',
'Figy Berry',
'Wiki Berry',
'Mago Berry',
'Aguav Berry',
'Iapapa Berry',
'Razz Berry',
'Bluk Berry',
'Nanab Berry',
'Wepear Berry',
'Pinap Berry',
'Pomeg Berry',
'Kelpsy Berry',
'Qualot Berry',
'Hondew Berry',
'Grepa Berry',
'Tamato Berry',
'Cornn Berry',
'Magost Berry',
'Rabuta Berry',
'Nomel Berry',
'Spelon Berry',
'Pamtre Berry',
'Watmel Berry',
'Durin Berry',
'Belue Berry',
'Liechi Berry',
'Ganlon Berry',
'Salac Berry',
'Petaya Berry',
'Apicot Berry',
'Lansat Berry',
'Starf Berry',
'Enigma Berry',
' ',' ',' ',
'Bright Powder',
'White Herb',
'Macho Brace',
' ',
'Quick Claw',
' ',
'Mental Herb',
'Choice Band',
"King's Rock",
'Silver Powder',
' ',' ',
'Soul Dew',
'Deep Sea Tooth',
'Deep Sea Scale',
' ',' ',
'Focus Band',
' ',
'Scope Lens',
'Metal Coat',
'Leftovers',
'Dragon Scale',
'Light Ball',
'Soft Sand',
'Hard Stone',
'Miracle Seed',
'Black Glasses',
'Black Belt',
'Magnet',
'Mystic Water',
'Sharp Beak',
'Poison Barb',
'Never-Melt Ice',
'Spell Tag',
'Twisted Spoon',
'Charcoal',
'Dragon Fang',
'Silk Scarf',
'Up-Grade',
'Shell Bell',
'Sea Incense',
'Lax Incense',
'Lucky Punch',
'Metal Powder',
'Thick Club',
'Stick',
' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',
'Red Orb',
'Blue Orb',
' ',' ',' ',' ',' ',' ',' ',' ',
'Root Fossil',
'Claw Fossil',
' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',
'Old Amber',
' ',' ',
'Helix Fossil',
'Dome Fossil',
' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',}

move = {
[000] = { name = '', maxPP = 99 },
[001] = { name = 'Pound', maxPP = 35 },
[002] = { name = 'Karate Chop', maxPP = 25 },
[003] = { name = 'Double Slap', maxPP = 10 },
[004] = { name = 'Weather Ball', maxPP = 15 },
[005] = { name = 'Mega Punch', maxPP = 20 },
[006] = { name = 'Pay Day', maxPP = 20 },
[007] = { name = 'Fire Punch', maxPP = 15 },
[008] = { name = 'Ice Punch', maxPP = 15 },
[009] = { name = 'Thunder Punch', maxPP = 15 },
[010] = { name = 'Scratch', maxPP = 35 },
[011] = { name = 'Weather Ball', maxPP = 15 },
[012] = { name = 'Guillotine', maxPP = 5 },
[013] = { name = 'Razor Wind', maxPP = 10 },
[014] = { name = 'Swords Dance', maxPP = 5 },
[015] = { name = 'Cut', maxPP = 30 },
[016] = { name = 'Gust', maxPP = 35 },
[017] = { name = 'Wing Attack', maxPP = 35 },
[018] = { name = 'Whirlwind', maxPP = 5 },
[019] = { name = 'Fly', maxPP = 15 },
[020] = { name = 'Bind', maxPP = 20 },
[021] = { name = 'Slam', maxPP = 20 },
[022] = { name = 'Vine Whip', maxPP = 10 },
[023] = { name = 'Stomp', maxPP = 20 },
[024] = { name = 'Double Kick', maxPP = 30 },
[025] = { name = 'Mega Kick', maxPP = 5 },
[026] = { name = 'Jump Kick', maxPP = 25 },
[027] = { name = 'Rolling Kick', maxPP = 24 },
[028] = { name = 'Sand Attack', maxPP = 5 },
[029] = { name = 'Headbutt', maxPP = 15 },
[030] = { name = 'Horn Attack', maxPP = 25 },
[031] = { name = 'Fury Attack', maxPP = 20 },
[032] = { name = 'Drill Run', maxPP = 16 },
[033] = { name = 'Tackle', maxPP = 35 },
[034] = { name = 'Body Slam', maxPP = 24 },
[035] = { name = 'Wrap', maxPP = 20 },
[036] = { name = 'Take Down', maxPP = 20 },
[037] = { name = 'Thrash', maxPP = 20 },
[038] = { name = 'Double-Edge', maxPP = 24 },
[039] = { name = 'Tail Whip', maxPP = 1 },
[040] = { name = 'Poison Sting', maxPP = 35 },
[041] = { name = 'Twineedle', maxPP = 20 },
[042] = { name = 'Pin Missile', maxPP = 20 },
[043] = { name = 'Leer', maxPP = 1 },
[044] = { name = 'Bite', maxPP = 25 },
[045] = { name = 'Growl', maxPP = 1 },
[046] = { name = 'Roar', maxPP = 5 },
[047] = { name = 'Sing', maxPP = 32 },
[048] = { name = 'Supersonic', maxPP = 20 },
[049] = { name = 'Sonicboom', maxPP = 20 },
[050] = { name = 'Disable', maxPP = 20 },
[051] = { name = 'Acid', maxPP = 30 },
[052] = { name = 'Ember', maxPP = 25 },
[053] = { name = 'Flamethrower', maxPP = 24 },
[054] = { name = 'Mist', maxPP = 3 },
[055] = { name = 'Water Gun', maxPP = 25 },
[056] = { name = 'Hydro Pump', maxPP = 8 },
[057] = { name = 'Surf', maxPP = 24 },
[058] = { name = 'Ice Beam', maxPP = 16 },
[059] = { name = 'Blizzard', maxPP = 8 },
[060] = { name = 'Psybeam', maxPP = 20 },
[061] = { name = 'Bubble Beam', maxPP = 20 },
[062] = { name = 'Aurora Beam', maxPP = 20 },
[063] = { name = 'Hyper Beam', maxPP = 8 },
[064] = { name = 'Peck', maxPP = 35 },
[065] = { name = 'Drill Peck', maxPP = 20 },
[066] = { name = 'Hidden Power', maxPP = 24 },
[067] = { name = 'Low Kick', maxPP = 20 },
[068] = { name = 'Counter', maxPP = 32 },
[069] = { name = 'Seismic Toss', maxPP = 20 },
[070] = { name = 'Strength', maxPP = 15 },
[071] = { name = 'Absorb', maxPP = 20 },
[072] = { name = 'Mega Drain', maxPP = 10 },
[073] = { name = 'Leech Seed', maxPP = 16 },
[074] = { name = 'Growth', maxPP = 5 },
[075] = { name = 'Razor Leaf', maxPP = 25 },
[076] = { name = 'Solar Beam', maxPP = 16 },
[077] = { name = 'Poison Powder', maxPP = 35 },
[078] = { name = 'Stun Spore', maxPP = 30 },
[079] = { name = 'Sleep Powder', maxPP = 24 },
[080] = { name = 'Petal Dance', maxPP = 16 },
[081] = { name = 'String Shot', maxPP = 5 },
[082] = { name = 'Dragon Rage', maxPP = 10 },
[083] = { name = 'Fire Spin', maxPP = 24 },
[084] = { name = 'Thunder Shock', maxPP = 30 },
[085] = { name = 'Thunderbolt', maxPP = 24 },
[086] = { name = 'Thunder Wave', maxPP = 16 },
[087] = { name = 'Thunder', maxPP = 16 },
[088] = { name = 'Rock Throw', maxPP = 15 },
[089] = { name = 'Earthquake', maxPP = 16 },
[090] = { name = 'Earth Power', maxPP = 16 },
[091] = { name = 'Dig', maxPP = 10 },
[092] = { name = 'Toxic', maxPP = 16 },
[093] = { name = 'Confusion', maxPP = 25 },
[094] = { name = 'Psychic', maxPP = 16 },
[095] = { name = 'Hypnosis', maxPP = 24 },
[096] = { name = 'Meditate', maxPP = 5 },
[097] = { name = 'Agility', maxPP = 3 },
[098] = { name = 'Quick Attack', maxPP = 30 },
[099] = { name = 'Rage', maxPP = 20 },
[100] = { name = 'Teleport', maxPP = 20 },
[101] = { name = 'Night Shade', maxPP = 15 },
[102] = { name = 'Mimic', maxPP = 10 },
[103] = { name = 'Screech', maxPP = 3 },
[104] = { name = 'Double Team', maxPP = 6 },
[105] = { name = 'Recover', maxPP = 10 },
[106] = { name = 'Harden', maxPP = 5 },
[107] = { name = 'Minimize', maxPP = 6 },
[108] = { name = 'Smokescreen', maxPP = 5 },
[109] = { name = 'Confuse Ray', maxPP = 10 },
[110] = { name = 'Withdraw', maxPP = 1 },
[111] = { name = 'Defense Curl', maxPP = 1 },
[112] = { name = 'Barrier', maxPP = 3 },
[113] = { name = 'Light Screen', maxPP = 3 },
[114] = { name = 'Haze', maxPP = 5 },
[115] = { name = 'Reflect', maxPP = 3 },
[116] = { name = 'Focus Energy', maxPP = 1 },
[117] = { name = 'Bide', maxPP = 10 },
[118] = { name = 'Metronome', maxPP = 35 },
[119] = { name = 'Mirror Move', maxPP = 20 },
[120] = { name = 'Self-Destruct', maxPP = 1 },
[121] = { name = 'Egg Bomb', maxPP = 10 },
[122] = { name = 'Lick', maxPP = 30 },
[123] = { name = 'Smog', maxPP = 20 },
[124] = { name = 'Sludge Bomb', maxPP = 16 },
[125] = { name = 'Bone Club', maxPP = 20 },
[126] = { name = 'Fire Blast', maxPP = 8 },
[127] = { name = 'Waterfall', maxPP = 15 },
[128] = { name = 'Clamp', maxPP = 16 },
[129] = { name = 'Swift', maxPP = 20 },
[130] = { name = 'Head Smash', maxPP = 8 },
[131] = { name = 'Hidden Power', maxPP = 24 },
[132] = { name = 'Hidden Power', maxPP = 24 },
[133] = { name = 'Amnesia', maxPP = 3 },
[134] = { name = 'Kinesis', maxPP = 6 },
[135] = { name = 'Soft-Boiled', maxPP = 16 },
[136] = { name = 'Hi Jump Kick', maxPP = 20 },
[137] = { name = 'Glare', maxPP = 30 },
[138] = { name = 'Dream Eater', maxPP = 15 },
[139] = { name = 'Hidden Power', maxPP = 24 },
[140] = { name = 'Hidden Power', maxPP = 24 },
[141] = { name = 'Leech Life', maxPP = 24 },
[142] = { name = 'Lovely Kiss', maxPP = 16 },
[143] = { name = 'Sky Attack', maxPP = 16 },
[144] = { name = 'Transform', maxPP = 32 },
[145] = { name = 'Bubble', maxPP = 30 },
[146] = { name = 'Dizzy Punch', maxPP = 10 },
[147] = { name = 'Spore', maxPP = 15 },
[148] = { name = 'Flash', maxPP = 5 },
[149] = { name = 'Psywave', maxPP = 24 },
[150] = { name = 'Hidden Power', maxPP = 24 },
[151] = { name = 'Acid Armor', maxPP = 3 },
[152] = { name = 'Crabhammer', maxPP = 16 },
[153] = { name = 'Explosion', maxPP = 1 },
[154] = { name = 'Fury Swipes', maxPP = 15 },
[155] = { name = 'Bonemerang', maxPP = 16 },
[156] = { name = 'Rest', maxPP = 10 },
[157] = { name = 'Rock Slide', maxPP = 16 },
[158] = { name = 'Hyper Fang', maxPP = 24 },
[159] = { name = 'Hidden Power', maxPP = 24 },
[160] = { name = 'Conversion', maxPP = 30 },
[161] = { name = 'Tri Attack', maxPP = 16 },
[162] = { name = 'Super Fang', maxPP = 16 },
[163] = { name = 'Slash', maxPP = 20 },
[164] = { name = 'Substitute', maxPP = 10 },
[165] = { name = 'Struggle', maxPP = 1 },
[166] = { name = 'Sketch', maxPP = 1 },
[167] = { name = 'Hidden Power', maxPP = 24 },
[168] = { name = 'Thief', maxPP = 10 },
[169] = { name = 'Spider Web', maxPP = 10 },
[170] = { name = 'Mind Reader', maxPP = 5 },
[171] = { name = 'Nightmare', maxPP = 15 },
[172] = { name = 'Flame Wheel', maxPP = 25 },
[173] = { name = 'Snore', maxPP = 30 },
[174] = { name = 'Curse', maxPP = 6 },
[175] = { name = 'Flail', maxPP = 5 },
[176] = { name = 'Conversion 2', maxPP = 30 },
[177] = { name = 'Aeroblast', maxPP = 10 },
[178] = { name = 'Hidden Power', maxPP = 24 },
[179] = { name = 'Reversal', maxPP = 5 },
[180] = { name = 'Spite', maxPP = 16 },
[181] = { name = 'Powder Snow', maxPP = 25 },
[182] = { name = 'Protect', maxPP = 10 },
[183] = { name = 'Mach Punch', maxPP = 30 },
[184] = { name = 'Scary Face', maxPP = 3 },
[185] = { name = 'Faint Attack', maxPP = 20 },
[186] = { name = 'Sweet Kiss', maxPP = 10 },
[187] = { name = 'Belly Drum', maxPP = 3 },
[188] = { name = 'Gunk Shot', maxPP = 8 },
[189] = { name = 'Mud-Slap', maxPP = 10 },
[190] = { name = 'Octazooka', maxPP = 16 },
[191] = { name = 'Spikes', maxPP = 3 },
[192] = { name = 'Zap Cannon', maxPP = 5 },
[193] = { name = 'Foresight', maxPP = 5 },
[194] = { name = 'Destiny Bond', maxPP = 5 },
[195] = { name = 'Perish Song', maxPP = 5 },
[196] = { name = 'Icy Wind', maxPP = 24 },
[197] = { name = 'Detect', maxPP = 5 },
[198] = { name = 'Bone Rush', maxPP = 24 },
[199] = { name = 'Lock-On', maxPP = 5 },
[200] = { name = 'Hidden Power', maxPP = 24 },
[201] = { name = 'Sandstorm', maxPP = 1 },
[202] = { name = 'Giga Drain', maxPP = 16 },
[203] = { name = 'Endure', maxPP = 5 },
[204] = { name = 'Charm', maxPP = 5 },
[205] = { name = 'Rollout', maxPP = 20 },
[206] = { name = 'False Swipe', maxPP = 40 },
[207] = { name = 'Swagger', maxPP = 15 },
[208] = { name = 'Milk Drink', maxPP = 10 },
[209] = { name = 'Wild Charge', maxPP = 24 },
[210] = { name = 'X-scissors', maxPP = 20 },
[211] = { name = 'Steel Wing', maxPP = 25 },
[212] = { name = 'Mean Look', maxPP = 5 },
[213] = { name = 'Attract', maxPP = 15 },
[214] = { name = 'Sleep Talk', maxPP = 16 },
[215] = { name = 'Heal Bell', maxPP = 2 },
[216] = { name = 'Return', maxPP = 32 },
[217] = { name = 'Present', maxPP = 15 },
[218] = { name = 'Frustration', maxPP = 32 },
[219] = { name = 'Safeguard', maxPP = 3 },
[220] = { name = 'Pain Split', maxPP = 10 },
[221] = { name = 'Sacred Fire', maxPP = 10 },
[222] = { name = 'Magnitude', maxPP = 30 },
[223] = { name = 'Dynamic Punch', maxPP = 5 },
[224] = { name = 'Megahorn', maxPP = 16 },
[225] = { name = 'Dragon Breath', maxPP = 20 },
[226] = { name = 'Baton Pass', maxPP = 40 },
[227] = { name = 'Encore', maxPP = 5 },
[228] = { name = 'Pursuit', maxPP = 20 },
[229] = { name = 'Rapid Spin', maxPP = 1 },
[230] = { name = 'Sweet Scent', maxPP = 5 },
[231] = { name = 'Iron Tail', maxPP = 24 },
[232] = { name = 'Metal Claw', maxPP = 35 },
[233] = { name = 'Vital Throw', maxPP = 10 },
[234] = { name = 'Morning Sun', maxPP = 10 },
[235] = { name = 'Synthesis', maxPP = 10 },
[236] = { name = 'Moonlight', maxPP = 10 },
[237] = { name = 'Hidden Power', maxPP = 15 },
[238] = { name = 'Cross Chop', maxPP = 8 },
[239] = { name = 'Twister', maxPP = 20 },
[240] = { name = 'Rain Dance', maxPP = 1 },
[241] = { name = 'Sunny Day', maxPP = 1 },
[242] = { name = 'Crunch', maxPP = 24 },
[243] = { name = 'Mirror Coat', maxPP = 32 },
[244] = { name = 'Psych Up', maxPP = 10 },
[245] = { name = 'Extreme Speed', maxPP = 8 },
[246] = { name = 'Ancientpower', maxPP = 8 },
[247] = { name = 'Shadow Ball', maxPP = 24 },
[248] = { name = 'Hidden Power', maxPP = 24 },
[249] = { name = 'Rock Smash', maxPP = 24 },
[250] = { name = 'Whirlpool', maxPP = 24 },
[251] = { name = 'Beat Up', maxPP = 10 },
[252] = { name = 'Fake Out', maxPP = 5 },
[253] = { name = 'Uproar', maxPP = 10 },
[254] = { name = 'Stockpile', maxPP = 16 },
[255] = { name = 'Spit Up', maxPP = 16 },
[256] = { name = 'Swallow', maxPP = 10 },
[257] = { name = 'Heat Wave', maxPP = 16 },
[258] = { name = 'Hail', maxPP = 1 },
[259] = { name = 'Torment', maxPP = 5 },
[260] = { name = 'Flatter', maxPP = 24 },
[261] = { name = 'Will-O-Wisp', maxPP = 15 },
[262] = { name = 'Memento', maxPP = 1 },
[263] = { name = 'Facade', maxPP = 32 },
[264] = { name = 'Focus Punch', maxPP = 20 },
[265] = { name = 'Smelling Salts', maxPP = 10 },
[266] = { name = 'Follow Me', maxPP = 20 },
[267] = { name = 'Nature Power', maxPP = 20 },
[268] = { name = 'Charge', maxPP = 20 },
[269] = { name = 'Taunt', maxPP = 3 },
[270] = { name = 'Helping Hand', maxPP = 20 },
[271] = { name = 'Hidden Power', maxPP = 24 },
[272] = { name = 'Role Play', maxPP = 10 },
[273] = { name = 'Wish', maxPP = 2 },
[274] = { name = 'Assist', maxPP = 32 },
[275] = { name = 'Ingrain', maxPP = 1 },
[276] = { name = 'Superpower', maxPP = 8 },
[277] = { name = 'Magic Coat', maxPP = 15 },
[278] = { name = 'Recycle', maxPP = 16 },
[279] = { name = 'Revenge', maxPP = 10 },
[280] = { name = 'Brick Break', maxPP = 15 },
[281] = { name = 'Yawn', maxPP = 10 },
[282] = { name = 'Knock Off', maxPP = 5 },
[283] = { name = 'Endeavor', maxPP = 5 },
[284] = { name = 'Draco Meteor', maxPP = 8 },
[285] = { name = 'Skill Swap', maxPP = 10 },
[286] = { name = 'Imprison', maxPP = 10 },
[287] = { name = 'Refresh', maxPP = 5 },
[288] = { name = 'Grudge', maxPP = 5 },
[289] = { name = 'Snatch', maxPP = 3 },
[290] = { name = 'Secret Power', maxPP = 20 },
[291] = { name = 'Dive', maxPP = 10 },
[292] = { name = 'Force Palm', maxPP = 16 },
[293] = { name = 'Camouflage', maxPP = 20 },
[294] = { name = 'Tail Glow', maxPP = 3 },
[295] = { name = 'Luster Purge', maxPP = 10 },
[296] = { name = 'Mist Ball', maxPP = 10 },
[297] = { name = 'Feather Dance', maxPP = 5 },
[298] = { name = 'Teeter Dance', maxPP = 32 },
[299] = { name = 'Blaze Kick', maxPP = 16 },
[300] = { name = 'Mud Sport', maxPP = 15 },
[301] = { name = 'Ice Ball', maxPP = 20 },
[302] = { name = 'Needle Arm', maxPP = 24 },
[303] = { name = 'Slack Off', maxPP = 10 },
[304] = { name = 'Hyper Voice', maxPP = 16 },
[305] = { name = 'Poison Fang', maxPP = 24 },
[306] = { name = 'Crush Claw', maxPP = 16 },
[307] = { name = 'Blast Burn', maxPP = 8 },
[308] = { name = 'Hydro Cannon', maxPP = 8 },
[309] = { name = 'Meteor Mash', maxPP = 16 },
[310] = { name = 'Shadow Sneak', maxPP = 24 },
[311] = { name = 'Weather Ball', maxPP = 16 },
[312] = { name = 'Aromatherapy', maxPP = 2 },
[313] = { name = 'Fake Tears', maxPP = 3 },
[314] = { name = 'Air Slash', maxPP = 25 },
[315] = { name = 'Overheat', maxPP = 16 },
[316] = { name = 'Odor Sleuth', maxPP = 3 },
[317] = { name = 'Rock Tomb', maxPP = 16 },
[318] = { name = 'Silver Wind', maxPP = 5 },
[319] = { name = 'Flash Cannon', maxPP = 16 },
[320] = { name = 'Grass Whistle', maxPP = 24 },
[321] = { name = 'Tickle', maxPP = 6 },
[322] = { name = 'Cosmic Power', maxPP = 6 },
[323] = { name = 'Water Spout', maxPP = 8 },
[324] = { name = 'Signal Beam', maxPP = 24 },
[325] = { name = 'Shadow Punch', maxPP = 20 },
[326] = { name = 'Extrasensory', maxPP = 30 },
[327] = { name = 'Sky Uppercut', maxPP = 24 },
[328] = { name = 'Sand Tomb', maxPP = 24 },
[329] = { name = 'Sheer Cold', maxPP = 8 },
[330] = { name = 'Muddy Water', maxPP = 10 },
[331] = { name = 'Bullet Seed', maxPP = 30 },
[332] = { name = 'Aerial Ace', maxPP = 32 },
[333] = { name = 'Ice Shard', maxPP = 30 },
[334] = { name = 'Iron Defense', maxPP = 3 },
[335] = { name = 'Block', maxPP = 5 },
[336] = { name = 'Howl', maxPP = 5 },
[337] = { name = 'Dragon Claw', maxPP = 24 },
[338] = { name = 'Frenzy Plant', maxPP = 8 },
[339] = { name = 'Bulk Up', maxPP = 3 },
[340] = { name = 'Bounce', maxPP = 5 },
[341] = { name = 'Mud Shot', maxPP = 24 },
[342] = { name = 'Poison Tail', maxPP = 16 },
[343] = { name = 'Hidden Power', maxPP = 24 },
[344] = { name = 'Volt Tackle', maxPP = 24 },
[345] = { name = 'Magical Leaf', maxPP = 20 },
[346] = { name = 'Water Sport', maxPP = 15 },
[347] = { name = 'Calm Mind', maxPP = 3 },
[348] = { name = 'Leaf Blade', maxPP = 24 },
[349] = { name = 'Dragon Dance', maxPP = 3 },
[350] = { name = 'Rock Blast', maxPP = 10 },
[351] = { name = 'Shock Wave', maxPP = 20 },
[352] = { name = 'Water Pulse', maxPP = 20 },
[353] = { name = 'Doom Desire', maxPP = 5 },
[354] = { name = 'Psycho Boost', maxPP = 8 }
} 

ability = {'Overgrow','Overgrow',
'Overgrow','Overgrow',
'Chlorophyll','Overgrow',
'Blaze','Blaze',
'Blaze','Blaze',
'Blaze','Blaze',
'Torrent','Torrent',
'Torrent','Torrent',
'Torrent','Torrent',
'Shield Dust','Shield Dust',
'Shed Skin','Shed Skin',
'Compound Eyes','Compound Eyes',
'Shield Dust','Shield Dust',
'Shed Skin','Shed Skin',
'Swarm','Swarm',
'Keen Eye','Keen Eye',
'Keen Eye','Keen Eye',
'Early Bird','Early Bird',
'Run Away','Run Away',
'Guts','Guts',
'Keen Eye','Keen Eye',
'Early Bird','Early Bird',
'Intimidate','Shed Skin',
'Intimidate','Shed Skin',
'Lightning Rod','Lightning Rod',
'Lightning Rod','Lightning Rod',
'Sand Veil','Sand Veil',
'Sand Veil','Sand Veil',
'Poison Point','Poison Point',
'Poison Point','Poison Point',
'Poison Point','Poison Point',
'Poison Point','Poison Point',
'Poison Point','Poison Point',
'Poison Point','Poison Point',
'Cute Charm','Cute Charm',
'Cute Charm','Cute Charm',
'Pressure','Pressure',
'Pressure','Pressure',
'Cute Charm','Cute Charm',
'Cute Charm','Cute Charm',
'Inner Focus','Inner Focus',
'Inner Focus','Inner Focus',
'Chlorophyll','Chlorophyll',
'Chlorophyll','Chlorophyll',
'Chlorophyll','Chlorophyll',
'Effect Spore','Effect Spore',
'Effect Spore','Effect Spore',
'Compound Eyes','Shield Dust',
'Compound Eyes','Shield Dust',
'Arena Trap','Sand Veil',
'Arena Trap','Sand Veil',
'Limber','Limber',
'Limber','Limber',
'Swift Swim','Oblivious',
'Swift Swim','Oblivious',
'Vital Spirit','Vital Spirit',
'Vital Spirit','Vital Spirit',
'Intimidate','Run Away',
'Intimidate','Blaze',
'Swift Swim','Swift Swim',
'Swift Swim','Swift Swim',
'Swift Swim','Swift Swim',
'Synchronize','Inner Focus',
'Synchronize','Inner Focus',
'Synchronize','Inner Focus',
'Guts','Guts',
'Guts','Guts',
'Guts','Guts',
'Chlorophyll','Chlorophyll',
'Chlorophyll','Chlorophyll',
'Chlorophyll','Chlorophyll',
'Clear Body','Liquid Ooze',
'Clear Body','Liquid Ooze',
'Rock Head','Sturdy',
'Rock Head','Sturdy',
'Rock Head','Sturdy',
'Flame Body','Run Away',
'Flame Body','Run Away',
'Oblivious','Own Tempo',
'Shell Armor','Own Tempo',
'Magnet Pull','Sturdy',
'Magnet Pull','Sturdy',
'Keen Eye','Inner Focus',
'Early Bird','Run Away',
'Early Bird','Run Away',
'Thick Fat','Thick Fat',
'Swift Swim','Thick Fat',
'Poison Point','Sticky Hold',
'Poison Point','Sticky Hold',
'Shell Armor','Shell Armor',
'Shell Armor','Shell Armor',
'Levitate','Levitate',
'Levitate','Levitate',
'Levitate','Levitate',
'Rock Head','Sturdy',
'Insomnia','Insomnia',
'Insomnia','Insomnia',
'Hyper Cutter','Shell Armor',
'Hyper Cutter','Shell Armor',
'Static','Static',
'Static','Static',
'Chlorophyll','Chlorophyll',
'Chlorophyll','Chlorophyll',
'Lightning Rod','Rock Head',
'Lightning Rod','Rock Head',
'Limber','Limber',
'Guts','Guts',
'Own Tempo','Oblivious',
'Levitate','Levitate',
'Levitate','Levitate',
'Lightning Rod','Rock Head',
'Lightning Rod','Rock Head',
'Natural Cure','Serene Grace',
'Chlorophyll','Chlorophyll',
'Early Bird','Early Bird',
'Swift Swim','Swift Swim',
'Poison Point','Poison Point',
'Swift Swim','Water Veil',
'Swift Swim','Water Veil',
'Natural Cure','Illuminate',
'Natural Cure','Illuminate',
'Own Tempo','Own Tempo',
'Swarm','Swarm',
'Oblivious','Oblivious',
'Static','Static',
'Flame Body','Flame Body',
'Intimidate','Hyper Cutter',
'Intimidate','Intimidate',
'Swift Swim','Swift Swim',
'Intimidate','Intimidate',
'Shell Armor','Shell Armor',
'Shadow Tag','Shadow Tag',
'Run Away','Run Away',
'Swift Swim','Swift Swim',
'Static','Static',
'Flame Body','Flame Body',
'Trace','Trace',
'Swift Swim','Shell Armor',
'Swift Swim','Shell Armor',
'Swift Swim','Battle Armor',
'Swift Swim','Battle Armor',
'Rock Head','Pressure',
'Guts','Thick Fat',
'Pressure','Pressure',
'Pressure','Pressure',
'Pressure','Pressure',
'Shed Skin','Shed Skin',
'Shed Skin','Shed Skin',
'Thick Fat','Shed Skin',
'Pressure','Run Away',
'Synchronize','Synchronize',
'Overgrow','Overgrow',
'Overgrow','Overgrow',
'Thick Fat','Overgrow',
'Blaze','Blaze',
'Blaze','Blaze',
'Blaze','Blaze',
'Torrent','Torrent',
'Torrent','Torrent',
'Battle Armor','Torrent',
'Early Bird','Keen Eye',
'Early Bird','Keen Eye',
'Insomnia','Keen Eye',
'Insomnia','Keen Eye',
'Early Bird','Swarm',
'Early Bird','Swarm',
'Insomnia','Swarm',
'Insomnia','Swarm',
'Inner Focus','Inner Focus',
'Volt Absorb','Illuminate',
'Volt Absorb','Illuminate',
'Static','Static',
'Cute Charm','Cute Charm',
'Cute Charm','Cute Charm',
'Serene Grace','Hustle',
'Serene Grace','Hustle',
'Early Bird','Synchronize',
'Early Bird','Synchronize',
'Static','Static',
'Static','Static',
'Static','Static',
'Chlorophyll','Chlorophyll',
'Huge Power','Thick Fat',
'Huge Power','Thick Fat',
'Rock Head','Sturdy',
'Swift Swim','Swift Swim',
'Chlorophyll','Chlorophyll',
'Chlorophyll','Chlorophyll',
'Chlorophyll','Chlorophyll',
'Vital Spirit','Own Tempo',
'Chlorophyll','Chlorophyll',
'Chlorophyll','Chlorophyll',
'Speed Boost','Compound Eyes',
'Water Absorb','Oblivious',
'Water Absorb','Oblivious',
'Synchronize','Synchronize',
'Synchronize','Synchronize',
'Insomnia','Insomnia',
'Natural Cure','Own Tempo',
'Levitate','Levitate',
'Levitate','Levitate',
'Shadow Tag','Shadow Tag',
'Early Bird','Inner Focus',
'Rough Skin','Sturdy',
'Shell Armor','Sturdy',
'Serene Grace','Run Away',
'Hyper Cutter','Sand Veil',
'Rock Head','Sturdy',
'Intimidate','Run Away',
'Intimidate','Intimidate',
'Swift Swim','Poison Point',
'Swarm','Swarm',
'Shell Armor','Sturdy',
'Guts','Swarm',
'Inner Focus','Keen Eye',
'Guts','Guts',
'Guts','Guts',
'Flame Body','Magma Armor',
'Flame Body','Flame Body',
'Oblivious','Oblivious',
'Thick Fat','Oblivious',
'Natural Cure','Hustle',
'Hustle','Hustle',
'Suction Cups','Suction Cups',
'Vital Spirit','Hustle',
'Swift Swim','Water Veil',
'Keen Eye','Sturdy',
'Early Bird','Early Bird',
'Intimidate','Early Bird',
'Swift Swim','Swift Swim',
'Cute Charm','Cute Charm',
'Battle Armor','Sturdy',
'Trace','Trace',
'Intimidate','Intimidate',
'Own Tempo','Own Tempo',
'Guts','Guts',
'Intimidate','Guts',
'Oblivious','Oblivious',
'Static','Static',
'Flame Body','Flame Body',
'Thick Fat','Thick Fat',
'Natural Cure','Serene Grace',
'Pressure','Pressure',
'Pressure','Pressure',
'Pressure','Pressure',
'Guts','Guts',
'Shed Skin','Shed Skin',
'Intimidate','Intimidate',
'Pressure','Run Away',
'Pressure','Run Away',
'Natural Cure','Natural Cure',
' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',
'Overgrow','Overgrow',
'Overgrow','Overgrow',
'Overgrow','Overgrow',
'Speed Boost','Blaze',
'Blaze','Blaze',
'Blaze','Blaze',
'Torrent','Torrent',
'Torrent','Torrent',
'Swift Swim','Torrent',
'Run Away','Run Away',
'Intimidate','Intimidate',
'Guts','Guts',
'Guts','Guts',
'Shield Dust','Shield Dust',
'Shed Skin','Shed Skin',
'Swarm','Swarm',
'Shed Skin','Shed Skin',
'Shield Dust','Shield Dust',
'Swift Swim','Rain Dish',
'Swift Swim','Rain Dish',
'Swift Swim','Rain Dish',
'Chlorophyll','Early Bird',
'Chlorophyll','Early Bird',
'Chlorophyll','Early Bird',
'Compound Eyes','Compound Eyes',
'Speed Boost','Speed Boost',
'Wonder Guard','Wonder Guard',
'Guts','Guts',
'Guts','Guts',
'Effect Spore','Effect Spore',
'Effect Spore','Effect Spore',
'Own Tempo','Own Tempo',
'Keen Eye','Keen Eye',
'Swift Swim','Keen Eye',
'Swift Swim','Swift Swim',
'Intimidate','Intimidate',
'Pressure','Oblivious',
'Pressure','Oblivious',
'Cute Charm','Cute Charm',
'Cute Charm','Cute Charm',
'Color Change','Color Change',
'Levitate','Levitate',
'Levitate','Levitate',
'Battle Armor','Sturdy',
'White Smoke','Shell Armor',
'Pressure','Pressure',
'Oblivious','Oblivious',
'Swift Swim','Oblivious',
'Swift Swim','Swift Swim',
'Shell Armor','Hyper Cutter',
'Shell Armor','Hyper Cutter',
'Swift Swim','Swift Swim',
'Swift Swim','Marvel Scale',
'Rough Skin','Rough Skin',
'Rough Skin','Rough Skin',
'Arena Trap','Hyper Cutter',
'Levitate','Levitate',
'Levitate','Levitate',
'Thick Fat','Guts',
'Thick Fat','Guts',
'Static','Lightning Rod',
'Intimidate','Lightning Rod',
'Oblivious','Oblivious',
'Magma Armor','Magma Armor',
'Thick Fat','Thick Fat',
'Thick Fat','Thick Fat',
'Rain Dish','Thick Fat',
'Sand Veil','Sand Veil',
'Sand Veil','Sand Veil',
'Inner Focus','Inner Focus',
'Intimidate','Inner Focus',
'Levitate','Levitate',
'Levitate','Levitate',
'Huge Power','Thick Fat',
'Thick Fat','Own Tempo',
'Thick Fat','Own Tempo',
'Plus','Plus',
'Minus','Minus',
'Intimidate','Hyper Cutter',
'Pure Power','Pure Power',
'Pure Power','Pure Power',
'Natural Cure','Natural Cure',
'Natural Cure','Natural Cure',
'Shadow Tag','Natural Cure',
'Levitate','Levitate',
'Pressure','Keen Eye',
'Natural Cure','Poison Point',
'Truant','Truant',
'Vital Spirit','Vital Spirit',
'Truant','Truant',
'Liquid Ooze','Sticky Hold',
'Liquid Ooze','Sticky Hold',
'Chlorophyll','Chlorophyll',
'Vital Spirit','Vital Spirit',
'Vital Spirit','Vital Spirit',
'Vital Spirit','Vital Spirit',
'Shell Armor','Shell Armor',
'Swift Swim','Swift Swim',
'Swift Swim','Swift Swim',
'Pressure','Pressure',
'Insomnia','Insomnia',
'Insomnia','Insomnia',
'Shed Skin','Shed Skin',
'Guts','Immunity',
'Rock Head','Swift Swim',
'Rock Head','Sturdy',
'Rock Head','Sturdy',
'Rock Head','Sturdy',
'Forecast','Forecast',
'Swarm','Swarm',
'Oblivious','Oblivious',
'Suction Cups','Suction Cups',
'Suction Cups','Suction Cups',
'Battle Armor','Battle Armor',
'Battle Armor','Battle Armor',
'Synchronize','Synchronize',
'Synchronize','Synchronize',
'Synchronize','Trace',
'Rock Head','Rock Head',
'Rock Head','Rock Head',
'Intimidate','Intimidate',
'Clear Body','Clear Body',
'Clear Body','Clear Body',
'Clear Body','Clear Body',
'Clear Body','Clear Body',
'Clear Body','Clear Body',
'Clear Body','Clear Body',
'Pressure','Run Away',
'Rock Head','Run Away',
'Pressure','Run Away',
'Levitate','Levitate',
'Levitate','Levitate',
'Serene Grace','Serene Grace',
'Pressure','Pressure',
'Levitate','Levitate',}
curve = {
5,5,5,5,5,5,5,5,5,0, 0,0,4,4,4,3,3,3,0,0, 0,0,0,0,0,0,0,0,3,3, 3,3,3,3,4,4,0,0,4,4, 5,5,3,3,3,4,4,3,3,5,
5,0,0,0,0,3,3,5,5,3, 3,3,5,5,5,5,5,5,3,3, 3,5,5,3,3,3,0,0,3,3, 0,0,4,5,5,0,0,0,0,5, 5,5,5,5,5,5,5,0,0,5,
5,5,5,5,5,0,0,0,5,5, 5,5,5,3,3,2,2,4,4,5, 5,0,0,3,3,0,5,5,5,5, 2,5,5,5,5,5,5,3,3,0, 0,5,2,5,5,5,2,2,2,5,
3,5,5,5,5,5,5,5,5,5, 4,4,4,4,4,4,4,4,5,5, 5,0,4,4,4,4,0,0,5,5, 5,3,3,3,0,3,3,3,3,4, 4,4,3,5,5,5,5,4,3,5,
2,5,0,5,5,3,3,5,0,0, 0,5,5,5,4,3,3,4,4,5, 5,4,0,0,4,3,5,5,5,2, 3,3,5,0,4,0,0,3,3,0, 5,5,5,5,5,5,5,5,5,0,
5,2,2,2,2,2,2,2,2,2, 2,2,2,2,2,2,2,2,2,2, 2,2,2,2,2,2,5,5,5,5, 5,5,5,5,5,4,4,3,3,4, 4,4,4,4,5,5,5,3,3,3,
5,5,5,3,3,2,2,4,4,4, 0,0,2,2,4,4,4,5,5,4, 0,5,0,0,4,4,4,2,2,3, 3,5,5,5,3,3,3,3,0,0, 3,3,3,3,3,3,3,5,5,3,
4,4,4,4,4,5,5,0,0,5, 2,2,3,5,5,5,4,4,4,0, 0,0,3,3,3,3,0,0,0,3, 3,5,5,5,5,4,4,3,3,4, 4,5,5,5,5,5,5,5,5,5,
2,2,2,5,5,5,5,5,5,5, 4}


local substructSelector = {
	[ 0] = {0, 1, 2, 3},
	[ 1] = {0, 1, 3, 2},
	[ 2] = {0, 2, 1, 3},
	[ 3] = {0, 3, 1, 2},
	[ 4] = {0, 2, 3, 1},
	[ 5] = {0, 3, 2, 1},
	[ 6] = {1, 0, 2, 3},
	[ 7] = {1, 0, 3, 2},
	[ 8] = {2, 0, 1, 3},
	[ 9] = {3, 0, 1, 2},
	[10] = {2, 0, 3, 1},
	[11] = {3, 0, 2, 1},
	[12] = {1, 2, 0, 3},
	[13] = {1, 3, 0, 2},
	[14] = {2, 1, 0, 3},
	[15] = {3, 1, 0, 2},
	[16] = {2, 3, 0, 1},
	[17] = {3, 2, 0, 1},
	[18] = {1, 2, 3, 0},
	[19] = {1, 3, 2, 0},
	[20] = {2, 1, 3, 0},
	[21] = {3, 1, 2, 0},
	[22] = {2, 3, 1, 0},
	[23] = {3, 2, 1, 0},
}

local function BitXOR(a,b)--Bitwise xor
    local p,c=1,0
    while a>0 and b>0 do
        local ra,rb=a%2,b%2
        if ra~=rb then c=c+p end
        a,b,p=(a-ra)/2,(b-rb)/2,p*2
    end
    if a<b then a=b end
    while a>0 do
        local ra=a%2
        if ra>0 then c=c+p end
        a,p=(a-ra)/2,p*2
    end
    return c
end

local Game = {
	new = function (self, game)
		self.__index = self
		setmetatable(game, self)
		return game
	end
}

function firstCase(str)
	return firstToUpper(string.lower(str))
end

function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end


function Game.getParty(game)
	local party = {}
	local monStart = game._party
	local nameStart = game._partyNames
	local otStart = game._partyOt
	for i = 1, emu:read8(game._partyCount) do
		party[i] = game:_readPartyMon(monStart, nameStart, otStart)
		monStart = monStart + game._partyMonSize
		if game._partyNames then
			nameStart = nameStart + game._monNameLength + 1
		end
		if game._partyOt then
			otStart = otStart + game._playerNameLength + 1
		end
	end
	return party
end

function Game.toString(game, rawstring)
	local string = ""
	for _, char in ipairs({rawstring:byte(1, #rawstring)}) do
		if char == game._terminator then
			break
		end
		string = string..game._charmap[char]
	end
	return string
end

function Game.getSpeciesName(game, id)
	if game._speciesIndex then
		local index = game._index
		if not index then
			index = {}
			for i = 0, 255 do
				index[emu.memory.cart0:read8(game._speciesIndex + i)] = i
			end
			game._index = index
		end
		id = index[id]
	end
	local pointer = game._speciesNameTable + (game._speciesNameLength) * id
	return game:toString(emu.memory.cart0:readRange(pointer, game._monNameLength))
end

local GBGameEn = Game:new{
	_terminator=0x50,
	_monNameLength=10,
	_speciesNameLength=10,
	_playerNameLength=10,
}

local GBAGameEn = Game:new{
	_terminator=0xFF,
	_monNameLength=10,
	_speciesNameLength=11,
	_playerNameLength=10,
}

local Generation1En = GBGameEn:new{
	_boxMonSize=33,
	_partyMonSize=44,
	_readBoxMon=readBoxMonGen1,
	_readPartyMon=readPartyMonGen1,
}

local Generation2En = GBGameEn:new{
	_boxMonSize=32,
	_partyMonSize=48,
	_readBoxMon=readBoxMonGen2,
	_readPartyMon=readPartyMonGen2,
}

local Generation3En = GBAGameEn:new{
	_boxMonSize=80,
	_partyMonSize=100,
	_readBoxMon=readBoxMonGen3,
	_readPartyMon=readPartyMonGen3,
}

GBGameEn._charmap = { [0]=
	"�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�",
	"�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�",
	"�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�",
	"�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�",
	"�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�",
	"", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�",
	"�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�",
	"�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", " ",
	"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P",
	"Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "(", ")", ":", ";", "[", "]",
	"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p",
	"q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "é", "ʼd", "ʼl", "ʼs", "ʼt", "ʼv",
	"�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�",
	"�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�",
	"'", "P\u{200d}k", "M\u{200d}n", "-", "ʼr", "ʼm", "?", "!", ".", "ァ", "ゥ", "ェ", "▹", "▸", "▾", "♂",
	"$", "×", ".", "/", ",", "♀", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"
}

GBAGameEn._charmap = { [0]=
	" ", "À", "Á", "Â", "Ç", "È", "É", "Ê", "Ë", "Ì", "こ", "Î", "Ï", "Ò", "Ó", "Ô",
	"Œ", "Ù", "Ú", "Û", "Ñ", "ß", "à", "á", "ね", "ç", "è", "é", "ê", "ë", "ì", "ま",
	"î", "ï", "ò", "ó", "ô", "œ", "ù", "ú", "û", "ñ", "º", "ª", "�", "&", "+", "あ",
	"ぃ", "ぅ", "ぇ", "ぉ", "v", "=", "ょ", "が", "ぎ", "ぐ", "げ", "ご", "ざ", "じ", "ず", "ぜ",
	"ぞ", "だ", "ぢ", "づ", "で", "ど", "ば", "び", "ぶ", "べ", "ぼ", "ぱ", "ぴ", "ぷ", "ぺ", "ぽ",
	"っ", "¿", "¡", "P\u{200d}k", "M\u{200d}n", "P\u{200d}o", "K\u{200d}é", "�", "�", "�", "Í", "%", "(", ")", "セ", "ソ",
	"タ", "チ", "ツ", "テ", "ト", "ナ", "ニ", "ヌ", "â", "ノ", "ハ", "ヒ", "フ", "ヘ", "ホ", "í",
	"ミ", "ム", "メ", "モ", "ヤ", "ユ", "ヨ", "ラ", "リ", "⬆", "⬇", "⬅", "➡", "ヲ", "ン", "ァ",
	"ィ", "ゥ", "ェ", "ォ", "ャ", "ュ", "ョ", "ガ", "ギ", "グ", "ゲ", "ゴ", "ザ", "ジ", "ズ", "ゼ",
	"ゾ", "ダ", "ヂ", "ヅ", "デ", "ド", "バ", "ビ", "ブ", "ベ", "ボ", "パ", "ピ", "プ", "ペ", "ポ",
	"ッ", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "!", "?", ".", "-", "・",
	"…", "“", "”", "‘", "’", "♂", "♀", "$", ",", "×", "/", "A", "B", "C", "D", "E",
	"F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U",
	"V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k",
	"l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "▶",
	":", "Ä", "Ö", "Ü", "ä", "ö", "ü", "⬆", "⬇", "⬅", "�", "�", "�", "�", "�", ""
}

function _read16BE(emu, address)
	return (emu:read8(address) << 8) | emu:read8(address + 1)
end

function Generation1En._readBoxMon(game, address, nameAddress, otAddress)
	local mon = {}
	mon.species = emu.memory.cart0:read8(game._speciesIndex + emu:read8(address + 0) - 1)
	mon.hp = _read16BE(emu, address + 1)
	mon.level = emu:read8(address + 3)
	mon.status = emu:read8(address + 4)
	mon.type1 = emu:read8(address + 5)
	mon.type2 = emu:read8(address + 6)
	mon.catchRate = emu:read8(address + 7)
	mon.moves = {
		emu:read8(address + 8),
		emu:read8(address + 9),
		emu:read8(address + 10),
		emu:read8(address + 11),
	}
	mon.otId = _read16BE(emu, address + 12)
	mon.experience = (_read16BE(emu, address + 14) << 8)| emu:read8(address + 16)
	mon.hpEV = _read16BE(emu, address + 17)
	mon.attackEV = _read16BE(emu, address + 19)
	mon.defenseEV = _read16BE(emu, address + 21)
	mon.speedEV = _read16BE(emu, address + 23)
	mon.spAttackEV = _read16BE(emu, address + 25)
	mon.spDefenseEV = mon.spAttackEv
	local iv = _read16BE(emu, address + 27)
	mon.attackIV = (iv >> 4) & 0xF
	mon.defenseIV = iv & 0xF
	mon.speedIV = (iv >> 12) & 0xF
	mon.spAttackIV = (iv >> 8) & 0xF
	mon.spDefenseIV = mon.spAttackIV
	mon.pp = {
		emu:read8(address + 28),
		emu:read8(address + 29),
		emu:read8(address + 30),
		emu:read8(address + 31),
	}
	mon.nickname = game:toString(emu:readRange(nameAddress, game._monNameLength))
	mon.otName = game:toString(emu:readRange(otAddress, game._playerNameLength))
	return mon
end

function Generation1En._readPartyMon(game, address, nameAddress, otAddress)
	local mon = game:_readBoxMon(address, nameAddress, otAddress)
	mon.level = emu:read8(address + 33)
	mon.maxHP = _read16BE(emu, address + 34)
	mon.attack = _read16BE(emu, address + 36)
	mon.defense = _read16BE(emu, address + 38)
	mon.speed = _read16BE(emu, address + 40)
	mon.spAttack = _read16BE(emu, address + 42)
	mon.spDefense = mon.spAttack
	return mon
end

function  Generation2En._readBoxMon(game, address, nameAddress, otAddress)
	local mon = {}
	mon.species = emu:read8(address + 0)
	mon.item = emu:read8(address + 1)
	mon.moves = {
		emu:read8(address + 2),
		emu:read8(address + 3),
		emu:read8(address + 4),
		emu:read8(address + 5),
	}
	mon.otId = _read16BE(emu, address + 6)
	mon.experience = (_read16BE(emu, address + 8) << 8)| emu:read8(address + 10)
	mon.hpEV = _read16BE(emu, address + 11)
	mon.attackEV = _read16BE(emu, address + 13)
	mon.defenseEV = _read16BE(emu, address + 15)
	mon.speedEV = _read16BE(emu, address + 17)
	mon.spAttackEV = _read16BE(emu, address + 19)
	mon.spDefenseEV = mon.spAttackEv
	local iv = _read16BE(emu, address + 21)
	mon.attackIV = (iv >> 4) & 0xF
	mon.defenseIV = iv & 0xF
	mon.speedIV = (iv >> 12) & 0xF
	mon.spAttackIV = (iv >> 8) & 0xF
	mon.spDefenseIV = mon.spAttackIV
	mon.pp = {
		emu:read8(address + 23),
		emu:read8(address + 24),
		emu:read8(address + 25),
		emu:read8(address + 26),
	}
	mon.friendship = emu:read8(address + 27)
	mon.pokerus = emu:read8(address + 28)
	local caughtData = _read16BE(emu, address + 29)
	mon.metLocation = (caughtData >> 8) & 0x7F
	mon.metLevel = caughtData & 0x1F
	mon.level = emu:read8(address + 31)
	mon.nickname = game:toString(emu:readRange(nameAddress, game._monNameLength))
	mon.otName = game:toString(emu:readRange(otAddress, game._playerNameLength))
	return mon
end

function Generation2En._readPartyMon(game, address, nameAddress, otAddress)
	local mon = game:_readBoxMon(address, nameAddress, otAddress)
	mon.status = emu:read8(address + 32)
	mon.hp = _read16BE(emu, address + 34)
	mon.maxHP = _read16BE(emu, address + 36)
	mon.attack = _read16BE(emu, address + 38)
	mon.defense = _read16BE(emu, address + 40)
	mon.speed = _read16BE(emu, address + 42)
	mon.spAttack = _read16BE(emu, address + 44)
	mon.spDefense = _read16BE(emu, address + 46)
	return mon
end

function Generation3En._readBoxMon(game, address)
	local mon = {}
	mon.personality = emu:read32(address + 0)
	mon.otId = emu:read32(address + 4)
	mon.nickname = game:toString(emu:readRange(address + 8, game._monNameLength))
	mon.language = emu:read8(address + 18)
	local flags = emu:read8(address + 19)
	mon.isBadEgg = flags & 1
	mon.hasSpecies = (flags >> 1) & 1
	mon.isEgg = (flags >> 2) & 1
	mon.otName = game:toString(emu:readRange(address + 20, game._playerNameLength))
	mon.markings = emu:read8(address + 27)
	mon.checksum = emu:read16(address + 28)

	local key = mon.otId ~ mon.personality

	local pSel = substructSelector[mon.personality % 24]
	local ss0 = {}
	local ss1 = {}
	local ss2 = {}
	local ss3 = {}

	for i = 0, 2 do
		ss0[i] = emu:read32(address + 32 + pSel[1] * 12 + i * 4) ~ key
		ss1[i] = emu:read32(address + 32 + pSel[2] * 12 + i * 4) ~ key
		ss2[i] = emu:read32(address + 32 + pSel[3] * 12 + i * 4) ~ key
		ss3[i] = emu:read32(address + 32 + pSel[4] * 12 + i * 4) ~ key
	end
	mon.species = ss0[0] & 0xFFFF
	mon.heldItem = ss0[0] >> 16
	mon.experience = ss0[1]
	mon.ppBonuses = ss0[2] & 0xFF
	mon.friendship = (ss0[2] >> 8) & 0xFF

	mon.moves = {
		ss1[0] & 0xFFFF,
		ss1[0] >> 16,
		ss1[1] & 0xFFFF,
		ss1[1] >> 16
	}
	mon.pp = {
		ss1[2] & 0xFF,
		(ss1[2] >> 8) & 0xFF,
		(ss1[2] >> 16) & 0xFF,
		ss1[2] >> 24
	}

	mon.hpEV = ss2[0] & 0xFF
	mon.attackEV = (ss2[0] >> 8) & 0xFF
	mon.defenseEV = (ss2[0] >> 16) & 0xFF
	mon.speedEV = ss2[0] >> 24
	mon.spAttackEV = ss2[1] & 0xFF
	mon.spDefenseEV = (ss2[1] >> 8) & 0xFF
	mon.cool = (ss2[1] >> 16) & 0xFF
	mon.beauty = ss2[1] >> 24
	mon.cute = ss2[2] & 0xFF
	mon.smart = (ss2[2] >> 8) & 0xFF
	mon.tough = (ss2[2] >> 16) & 0xFF
	mon.sheen = ss2[2] >> 24

	mon.pokerus = ss3[0] & 0xFF
	mon.metLocation = (ss3[0] >> 8) & 0xFF
	flags = ss3[0] >> 16
	mon.metLevel = flags & 0x7F
	mon.metGame = (flags >> 7) & 0xF
	mon.pokeball = (flags >> 11) & 0xF
	mon.otGender = (flags >> 15) & 0x1
	flags = ss3[1]
	mon.hpIV = flags & 0x1F
	mon.attackIV = (flags >> 5) & 0x1F
	mon.defenseIV = (flags >> 10) & 0x1F
	mon.speedIV = (flags >> 15) & 0x1F
	mon.spAttackIV = (flags >> 20) & 0x1F
	mon.spDefenseIV = (flags >> 25) & 0x1F
	-- Bit 30 is another "isEgg" bit
	mon.altAbility = (flags >> 31) & 1
	flags = ss3[2]
	mon.coolRibbon = flags & 7
	mon.beautyRibbon = (flags >> 3) & 7
	mon.cuteRibbon = (flags >> 6) & 7
	mon.smartRibbon = (flags >> 9) & 7
	mon.toughRibbon = (flags >> 12) & 7
	mon.championRibbon = (flags >> 15) & 1
	mon.winningRibbon = (flags >> 16) & 1
	mon.victoryRibbon = (flags >> 17) & 1
	mon.artistRibbon = (flags >> 18) & 1
	mon.effortRibbon = (flags >> 19) & 1
	mon.marineRibbon = (flags >> 20) & 1
	mon.landRibbon = (flags >> 21) & 1
	mon.skyRibbon = (flags >> 22) & 1
	mon.countryRibbon = (flags >> 23) & 1
	mon.nationalRibbon = (flags >> 24) & 1
	mon.earthRibbon = (flags >> 25) & 1
	mon.worldRibbon = (flags >> 26) & 1
	mon.eventLegal = (flags >> 27) & 0x1F
	return mon
end

function Generation3En._readPartyMon(game, address)
	local mon = game:_readBoxMon(address)
	mon.status = emu:read32(address + 80)
	mon.level = emu:read8(address + 84)
	mon.mail = emu:read32(address + 85)
	mon.hp = emu:read16(address + 86)
	mon.maxHP = emu:read16(address + 88)
	mon.attack = emu:read16(address + 90)
	mon.defense = emu:read16(address + 92)
	mon.speed = emu:read16(address + 94)
	mon.spAttack = emu:read16(address + 96)
	mon.spDefense = emu:read16(address + 98)
	return mon
end

local gameRBEn = Generation1En:new{
	name="Red/Blue (USA)",
	_party=0xd16b,
	_partyCount=0xd163,
	_partyNames=0xd2b5,
	_partyOt=0xd273,
	_speciesNameTable=0x1c21e,
	_speciesIndex=0x41024,
}

local gameYellowEn = Generation1En:new{
	name="Yellow (USA)",
	_party=0xd16a,
	_partyCount=0xd162,
	_partyNames=0xd2b4,
	_partyOt=0xd272,
	_speciesNameTable=0xe8000,
	_speciesIndex=0x410b1,
}

local gameGSEn = Generation2En:new{
	name="Gold/Silver (USA)",
	_party=0xda2a,
	_partyCount=0xda22,
	_partyNames=0xdb8c,
	_partyOt=0xdb4a,
	_speciesNameTable=0x1b0b6a,
}

local gameCrystalEn = Generation2En:new{
	name="Crystal (USA)",
	_party=0xdcdf,
	_partyCount=0xdcd7,
	_partyNames=0xde41,
	_partyOt=0xddff,
	_speciesNameTable=0x5337a,
}

local gameRubyEn = Generation3En:new{
	name="Ruby (USA)",
	_party=0x3004360,
	_partyCount=0x3004350,
	_speciesNameTable=0x1f716c,
}

local gameSapphireEn = Generation3En:new{
	name="Sapphire (USA)",
	_party=0x3004360,
	_partyCount=0x3004350,
	_speciesNameTable=0x1f70fc,
}

local gameEmeraldEn = Generation3En:new{
	name="Emerald (USA)",
	_party=0x20244ec,
	_partyCount=0x20244e9,
	_speciesNameTable=0x3185c8,
}

local gameFireRedEn = Generation3En:new{
	name="FireRed (USA)",
	_party=0x2024284,
	_partyCount=0x2024029,
	_speciesNameTable=0x245ee0,
}

local gameFireRedEnR1 = gameFireRedEn:new{
	name="FireRed (USA) (Rev 1)",
	_speciesNameTable=0x245f50,
}

local gameLeafGreenEn = Generation3En:new{
	name="LeafGreen (USA)",
	_party=0x2024284,
	_partyCount=0x2024029,
	_speciesNameTable=0x245ebc,
}

local gameLeafGreenEnR1 = gameLeafGreenEn:new{
	name="LeafGreen (USA)",
	_party=0x2024284,
	_partyCount=0x2024029,
	_speciesNameTable=0x245f2c,
}

gameCodes = {
	["DMG-AAUE"]=gameGSEn, -- Gold
	["DMG-AAXE"]=gameGSEn, -- Silver
	["CGB-BYTE"]=gameCrystalEn,
	["AGB-AXVE"]=gameRubyEn,
	["AGB-AXPE"]=gameSapphireEn,
	["AGB-BPEE"]=gameEmeraldEn,
	["AGB-BPRE"]=gameFireRedEn,
	["AGB-BPGE"]=gameLeafGreenEn,
}

-- These versions have slight differences and/or cannot be uniquely
-- identified by their in-header game codes, so fall back on a CRC32
gameCrc32 = {
	[0x9f7fdd53] = gameRBEn, -- Red
	[0xd6da8a1a] = gameRBEn, -- Blue
	[0x7d527d62] = gameYellowEn,
	[0x3358e30a] = gameCrystal, -- Crystal rev 1
	[0x84ee4776] = gameFireRedEnR1,
	[0xdaffecec] = gameLeafGreenEnR1,
}

function printPartyStatus(game, buffer)
	buffer:clear()
	for _, mon in ipairs(game:getParty()) do
		buffer:print(string.format("%-10s (Lv%3i %10s): %3i/%3i\n",
			mon.nickname,
			mon.level,
			game:getSpeciesName(mon.species),
			mon.hp,
			mon.maxHP))
	end
end

function detectGame()
	local checksum = 0
	for i, v in ipairs({emu:checksum(C.CHECKSUM.CRC32):byte(1, 4)}) do
		checksum = checksum * 256 + v
	end
	game = gameCrc32[checksum]
	if not game then
		game = gameCodes[emu:getGameCode()]
	end

	if not game then
		console:error("Unknown game!")
	else
		console:log("Found game: " .. game.name)
	end
end

function statusSlot(slot, status)
	pcount = emu:read8(game._partyCount)
	if(slot<=pcount and slot>=0) then
    	emu:write32(0x20244ec + 80 + 100*(slot-1), status)
	else 
		console:log("Invalid Slot, slot out of range")
	end
end

function sleep(slot)
    statusSlot(slot, 1)
end

function poison(slot)
    statusSlot(slot, 8)
end

function burn(slot)
    statusSlot(slot, 16)
end

function freeze(slot)
    statusSlot(slot, 32)
end

function paralyze(slot)
    statusSlot(slot, 64)
end

function bedtime()
	for i=emu:read8(game._partyCount),1,-1 do
		statusSlot(i, 1)
	end
end

function sethp(slot, hp)
	if (hp<1 or hp>emu:read16(0x20244ec + 88) + 100*(slot-1)) then
		console:log("Invalid HP")
	elseif (slot>game._partyCount or slot<1) then
		console:log("Invalid Slot, slot out of range")
	else
		emu:write16((0x20244ec + 86) + 100*(slot-1), hp)
	end
end

function getMove(curMove)
	return move[curMove]["name"]
end

function slowCurve(n)
	return math.floor((5*(n^3))/4)
end
function fastCurve(n)
	return math.floor((4*(n^3))/5)
end
function medfastCurve(n)
	return n^3
end
function medslowCurve(n)
	return math.floor((6 * (n)^3) / 5) - (15 * (n)^2) + (100 * n) - 140
end
function erraticCurve(n)
	if (n<=50) then
		return math.floor(((100 - n)*n^3)/50)
	end
	if (n<=68) then
		return math.floor(((150 - n)*n^3)/50)
	end
	if (n<=98) then
		return math.floor(math.floor((1911 - 10 * n) / 3) * n^23 / 500)
	end
	return math.floor((160 - n) * n^3 / 100)
end
function flutuatingCurve(n)
	if (n<15) then
	  return math.floor((math.floor((n + 1) / 3) + 24) * n^3 / 50)
	end
	if (n<=36) then
		return math.floor((n + 14) * n^3 / 50)
	end
	return math.floor((math.floor(n / 2) + 32) * n^3 / 50)
end

function expRequired(species,level)
	expCurve = curve[species]
	if (expCurve == 0) then return medfastCurve(level) end
	if (expCurve == 1) then return erraticCurve(level) end
	if (expCurve == 2) then return flutuatingCurve(level) end
	if (expCurve == 3) then return medslowCurve(level) end
	if (expCurve == 4) then return fastCurve(level) end
	if (expCurve == 5) then return slowCurve(level) end
end

function calcLevel(exp, species)
	level = 1
	while (exp>=expRequired(species,level+1)) do
		level=level+1
	end
	return level
end

function edgeparty()
	for i=emu:read8(game._partyCount),1,-1 do
		edge(i)
	end
end

function edge(slot, xpToLevelUp)
	xpToLevelUp = xpToLevelUp or 1
	pcount = emu:read8(game._partyCount)
	if(not(slot<=pcount and slot>=0)) then
		console:log("Invalid Slot, slot out of range")
	elseif ((0x20244ec + 84+  (slot-1)*100) == 100) then
		console:log("Invalid Level")
	else
		local mon = game:_readPartyMon(0x20244ec + (slot-1)*100)
		local checksum = ((mon.checksum - (mon.experience >> 16))%65536)
		checksum = ((checksum - (mon.experience & 0x0000FFFF))%65536)
		local pSel = substructSelector[mon.personality % 24]
		targetExp = expRequired(mon.species,mon.level+1)-xpToLevelUp 
		encryptedExp = BitXOR(BitXOR(targetExp, mon.personality), mon.otId)
		checksum = (checksum + (targetExp>>16))
		checksum = ((checksum + (targetExp & 0x0000FFFF))%65536)
		emu:write32((0x20244ec + (slot-1)*100 + 32 + pSel[1] * 12 + 1 * 4),encryptedExp)
		emu:write16(0x20244ec + (slot-1)*100 + 28, checksum) 
	end
end

function printMon(mon)
	str = ""
	str = str .. mon.nickname .. " (" .. firstCase(game:getSpeciesName(mon.species) .. ")")
	if (item[mon.heldItem]) then
		str = str .. string.format(" @ %s", item[mon.heldItem])
	end
	str = str .. string.format("\n")
	str = str .. "Ability: " .. string.format("%s", ability[(mon.species*2)-1+mon.altAbility]) .. string.format("\n")
	str = str .. string.format("Level: %d\n",calcLevel(mon.experience, mon.species))
	str = str .. string.format("%s", nature[(mon.personality % 25)+1]) .. " Nature" .. string.format("\n")
	str = str .. string.format("IVs: %d HP / %d Atk / %d Def / %d SpA / %d SpD / %d Spe", mon.hpIV, mon.attackIV, mon.defenseIV, mon.spAttackIV, mon.spDefenseIV, mon.speedIV) .. string.format("\n")
	for i=1,4 do
		local mv = getMove(mon.moves[i])
		if(mv ~= "") then
			str = str .. string.format("- %s\n", mv)
		end
	end
	str = str .. string.format("\n")
	buffer:print(str)
end

function exportall()
	address = 0x2029800 + 4 + emu:read8(0x3005d94)
	i=0
	exportparty()
	while i<120 do
		if (emu:read32(address) ~=0) then 
			printMon(game:_readBoxMon(address))
		end
		i = i+1
		address = address + 80
	end
end

function exportparty()
	buffer:clear()
    for _, mon in ipairs(game:getParty()) do
		printMon(mon)
	end
end

function setrain(route, status)
	if route ~= 119 and route ~= 123 then
		console:log("Invalid Route, only Route 119 and 123 weather can be changed")
	elseif status == nil or not type(status) == "boolean" then
		console:log("Enter true for rain, false for no rain")
	else
		local gSaveBlock1Ptr = emu:read32(0x03005D8C)
		local weatherCycleStageAddr = gSaveBlock1Ptr + 0x2F
		if status then
			emu:write8(weatherCycleStageAddr, 2)
		else
			emu:write8(weatherCycleStageAddr, 0)
		end
	end
end

function getbits(a, b, d)
	return (a >> b) % (1 << d)
end

function heal(slot)
	if (slot>game._partyCount or slot<1) then
		console:log("Invalid Slot, slot out of range")
	else
		local start = 0x20244ec  + 100 * (slot - 1)
		local mon = game:_readPartyMon(start)
		sethp(slot, mon.maxHP)
		statusSlot(slot, 0)
		
		local magicword = BitXOR(mon.personality, mon.otId)
		local aux = mon.personality % 24
		local attackoffset = substructSelector[aux][2] * 12
		local checksum = mon.checksum
		local attack3 = BitXOR(emu:read32(start+32+attackoffset+8), magicword)
		local temp = 0
		for i=3,0,-1 do
			temp = temp << 8
			local attackVal = BitXOR(emu:read32(start+32+attackoffset + 4*(math.floor(i/2))), magicword)
			local mv = (attackVal >> (16*(i%2))) % (1 << 16)
			if mv ~= 0 then
				local newPP = move[mv]["maxPP"]
				temp = temp + newPP
				local oldPP = getbits(attack3, 8 * i, 8)
				checksum = checksum + ((newPP - oldPP) * (1 + (0xFF * (i % 2))))
			end
		end
		emu:write32(start+32+attackoffset+8, BitXOR(temp, magicword))
		emu:write16(start+28, checksum)
	end
end

function nursejoy()
	for i=emu:read8(game._partyCount),1,-1 do
		heal(i)
	end
end

function help()
	buffer:clear()
	buffer:print("Available commands:\n")
	buffer:print(" sleep(slot) - Pre-sleeps chosen slot in party\n")
	buffer:print(" poison(slot) - Poisons chosen slot in party\n")
	buffer:print(" paralyze(slot) - Paralyzes chosen slot in party\n")
	buffer:print(" burn(slot) - Burns chosen slot in party\n")
	buffer:print(" freeze(slot) - Freezes chosen slot in party\n")
	buffer:print(" bedtime() - Pre-sleeps entire party\n")
	buffer:print(" sethp(slot,HP) - sets hp of slot to specified hp\n")
	buffer:print(" exportparty() - exports showdown calc verison of party to console\n")
	buffer:print(" exportall() - exports showdown calc verison of first 5 boxes + party to console\n")
	buffer:print(" edge(slot) - edges slot\n")
	buffer:print(" edge(slot, amt) - edges slot to specific amount\n")
	buffer:print(" edgeparty() - edges entire party\n")
	buffer:print(" setrain(route, status) - sets rain on/off on route 119 or 123\n")
	buffer:print(" heal(slot) - heals all HP, PP and status for that party slot\n")
	buffer:print(" nursejoy() - heals all HP, PP and status for the entire party\n")
end

callbacks:add("start", detectGame)
if emu then
	detectGame()
	buffer = console:createBuffer("Exports")
	buffer:setSize(200,1000)
	help()
end