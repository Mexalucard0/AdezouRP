-------------------------------------------
-------- MADE BY GITHUB.COM/AVAN0X --------
--------------- AvaN0x#6348 ---------------
---------- FROM esx_vehicleshop -----------
-------------------------------------------

CREATE TABLE `owned_vehicles` (
	`owner` varchar(22) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`vehicle` longtext,
  	`fuel` decimal(6,3) NOT NULL DEFAULT '100.000',
	`type` VARCHAR(20) NOT NULL DEFAULT 'car',
	`job` VARCHAR(20) NULL DEFAULT NULL,
	`stored` TINYINT(1) NOT NULL DEFAULT '0',

	PRIMARY KEY (`plate`)
);


CREATE TABLE `vehicle_categories` (
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`name`)
);

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('compacts', 'Compacts'),
	('coupes', 'Coupés'),
	('motorcycles', 'Motos'),
	('muscle', 'Muscle'),
	('offroad', 'Off Road'),
	('sedans', 'Sedans'),
	('sports', 'Sports'),
	('sportsclassics', 'Sports Classics'),
	('super', 'Super'),
	('suvs', 'SUVs'),
	('vans', 'Vans')
;

CREATE TABLE IF NOT EXISTS `vehicleshop` (
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) DEFAULT NULL,
	`category` varchar(60) NOT NULL DEFAULT '',
	
	PRIMARY KEY (`model`,`category`)
);

INSERT INTO `vehicleshop` (`name`, `model`, `price`, `category`) VALUES
	('Adder', 'adder', NULL, 'society_state'),
	('Adder', 'adder', 750000, 'super'),
	('Akuma', 'akuma', 33500, 'motorcycles'),
	('Alpha', 'alpha', 30000, 'sports'),
	('Ambulance', 'ambulance', 80000, 'society_ambulance'),
	('Asea', 'asea', 8000, 'sedans'),
	('Asterope', 'asterope', 14000, 'sedans'),
	('Autarch', 'autarch', 700000, 'super'),
	('Avarus', 'avarus', 20000, 'motorcycles'),
	('Bagger', 'bagger', 15000, 'motorcycles'),
	('Baller Sport', 'baller3', 80000, 'suvs'),
	('Baller Sport LWD', 'baller4', 85000, 'suvs'),
	('Banshee', 'banshee', 63500, 'sports'),
	('Banshee 900R', 'banshee2', 430000, 'super'),
	('Bati 801', 'bati', 47000, 'motorcycles'),
	('Bati 801RR', 'bati2', 50000, 'motorcycles'),
	('Benson', 'benson', 110000, 'society_cluckin'),
	('Bestia GTS', 'bestiagts', 75000, 'sports'),
	('BF400', 'bf400', 80000, 'motorcycles'),
	('BF Injection', 'bfinjection', 40000, 'offroad'),
	('Bifta', 'bifta', 10000, 'offroad'),
	('Bison', 'bison', 24000, 'vans'),
	('Bjxl', 'bjxl', 30000, 'suvs'),
	('Blade', 'blade', 14500, 'muscle'),
	('Blazer', 'blazer', 5000, 'offroad'),
	('Blazer Hot-Rod', 'blazer3', 5500, 'offroad'),
	('Blazer Sport', 'blazer4', 6000, 'offroad'),
	('Blista', 'blista', 10000, 'compacts'),
	('Blista Retro', 'blista2', 12500, 'sportsclassics'),
	('BMX (velo)', 'bmx', 300, 'motorcycles'),
	('Bobcat XL', 'bobcatxl', 30000, 'vans'),
	('Bodhi', 'bodhi2', 32000, 'offroad'),
	('Brawler', 'brawler', 33000, 'offroad'),
	('Brioso R/A', 'brioso', 9000, 'compacts'),
	('Btype', 'btype', 45000, 'sportsclassics'),
	('Fränken Stange', 'btype2', 50000, 'sportsclassics'),
	('Btype Luxe', 'btype3', 45000, 'sportsclassics'),
	('Buccaneer', 'buccaneer', 33500, 'muscle'),
	('Buccaneer Rider', 'buccaneer2', 19000, 'muscle'),
	('Buffalo', 'buffalo', 24000, 'muscle'),
	('Buffalo S', 'buffalo2', 27000, 'muscle'),
	('Buffalo course', 'buffalo3', 28000, 'muscle'),
	('Bullet', 'bullet', 350000, 'super'),
	('Burrito', 'burrito3', NULL, 'society_bahama'),
	('Burrito', 'burrito3', 80000, 'vans'),
	('Camper', 'camper', 12000, 'vans'),
	('Caracara', 'caracara2', 200000, 'offroad'),
	('Carbonizzare', 'carbonizzare', NULL, 'society_bahama'),
	('Carbonizzare', 'carbonizzare', 92000, 'sports'),
	('Carbon RS', 'carbonrs', 35000, 'motorcycles'),
	('Casco', 'casco', 57500, 'sportsclassics'),
	('Cheburek', 'cheburek', 12000, 'sportsclassics'),
	('Cheetah', 'cheetah', 450000, 'super'),
	('Cheetah Classique', 'cheetah2', 90000, 'sportsclassics'),
	('Chimera', 'chimera', 25000, 'motorcycles'),
	('Chino', 'chino', 9000, 'muscle'),
	('Chino Luxe', 'chino2', 16000, 'muscle'),
	('Cliffhanger', 'cliffhanger', 19000, 'motorcycles'),
	('Clique', 'clique', 55000, 'sportsclassics'),
	('Club', 'club', 25000, 'sedans'),
	('Cognoscenti Cabrio', 'cogcabrio', 14000, 'coupes'),
	('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
	('Comet', 'comet2', 84000, 'sports'),
	('Comet Retro', 'comet3', 104000, 'sports'),
	('Comet Safari', 'comet4', 64000, 'sports'),
	('Comet 5', 'comet5', 70000, 'sports'),
	('contender', 'contender', 200000, 'offroad'),
	('Coquette', 'coquette', 91000, 'sports'),
	('Coquette Classic', 'coquette2', 60000, 'sportsclassics'),
	('Coquette BlackFin', 'coquette3', 70000, 'sportsclassics'),
	('Coquette D10', 'coquette4', 750000, 'super'),
	('Cruiser (velo)', 'cruiser', 400, 'motorcycles'),
	('Cyclone', 'cyclone', 350000, 'super'),
	('Daemon', 'daemon', 16000, 'motorcycles'),
	('Daemon The Lost', 'daemon2', 16000, 'motorcycles'),
	('Defiler', 'defiler', 27000, 'motorcycles'),
	('Deveste', 'deveste', 1700000, 'super'),
	('Deviant', 'deviant', 18000, 'muscle'),
	('Diablous', 'diablous', 22000, 'motorcycles'),
	('Diablous Custom', 'diablous2', 30000, 'motorcycles'),
	('Dilettante', 'dilettante', 9000, 'sedans'),
	('Dominator', 'dominator', 25000, 'muscle'),
	('Dominator GTX', 'dominator3', 35000, 'muscle'),
	('Double T', 'double', 38000, 'motorcycles'),
	('8F Obey', 'drafter', 79000, 'sports'),
	('Dubsta', 'dubsta', NULL, 'society_mecano'),
	('Dubsta', 'dubsta', 50000, 'suvs'),
	('Dubsta Luxuary', 'dubsta2', 90000, 'suvs'),
	('Dubsta 6x6', 'dubsta3', 55000, 'offroad'),
	('Dukes', 'dukes', 34000, 'muscle'),
	('Dukes ArtaP', 'dukes3', 16000, 'muscle'),
	('Dune Buggy', 'dune', 10000, 'offroad'),
	('Dynasty', 'dynasty', 7000, 'sportsclassics'),
	('Elegy', 'elegy', 65000, 'sports'),
	('Elegy Sport', 'elegy2', 63000, 'sports'),
	('Ellie', 'ellie', 19500, 'muscle'),
	('Emerus', 'emerus', 1200000, 'super'),
	('Emperor', 'emperor', 8000, 'sedans'),
	('Enduro', 'enduro', 14000, 'motorcycles'),
	('Entity XXR', 'entity2', 220000, 'sports'),
	('Esskey', 'esskey', 12000, 'motorcycles'),
	('Everon', 'everon', 70000, 'offroad'),
	('Exemplar', 'exemplar', 35000, 'sedans'),
	('F620', 'f620', 14000, 'coupes'),
	('Faction', 'faction', 32000, 'muscle'),
	('Faction Rider', 'faction2', 18000, 'muscle'),
	('Faction XL', 'faction3', 20000, 'muscle'),
	('Fagaloa', 'fagaloa', 7500, 'sportsclassics'),
	('Faggio Sport', 'faggio', 1000, 'motorcycles'),
	('Faggio', 'faggio2', 500, 'motorcycles'),
	('Faggio Custom', 'faggio3', 750, 'motorcycles'),
	('Buffalo Banalisée', 'fbi', 63000, 'society_ambulance'),
	('Buffalo Banalisée', 'fbi', 63000, 'society_police'),
	('FCR', 'fcr', 15000, 'motorcycles'),
	('FCR Custom', 'fcr2', 17000, 'motorcycles'),
	('Felon', 'felon', 32000, 'sedans'),
	('Felon', 'felon', NULL, 'society_taxi'),
	('Felon GT', 'felon2', 15000, 'coupes'),
	('Feltzer', 'feltzer2', 107999, 'sports'),
	('Stirling GT', 'feltzer3', 67000, 'sportsclassics'),
	('Fixter (velo)', 'fixter', 500, 'motorcycles'),
	('FlashGT', 'flashgt', 95000, 'sports'),
	('Plateau', 'flatbed', 150000, 'society_mecano'),
	('FMJ', 'fmj', 500000, 'super'),
	('FQ2', 'fq2', 40000, 'suvs'),
	('Freecrawler', 'freecrawler', 30000, 'offroad'),
	('Fugitive', 'fugitive', 15500, 'sedans'),
	('Furia', 'furia', 950000, 'super'),
	('Furore GT', 'furoregt', 95000, 'sports'),
	('Futo', 'futo', 30000, 'sports'),
	('Gargoyle', 'gargoyle', 18000, 'motorcycles'),
	('Gauntlet', 'gauntlet', 34000, 'muscle'),
	('Gauntlet Course', 'gauntlet2', 42000, 'muscle'),
	('Gauntlet Classic', 'gauntlet3', 28000, 'muscle'),
	('Gauntlet Hellfire', 'gauntlet4', 55000, 'muscle'),
	('Gauntlet Classic Custom', 'gauntlet5', 80000, 'muscle'),
	('GB200', 'gb200', 80000, 'sports'),
	('Gang Burrito', 'gburrito', 30000, 'vans'),
	('Burrito', 'gburrito2', 25000, 'vans'),
	('Glendale', 'glendale', 7000, 'sedans'),
	('Glendale custom', 'glendale2', 22000, 'muscle'),
	('GP1', 'gp1', 750000, 'super'),
	('Granger', 'granger', 80000, 'suvs'),
	('Gresley', 'gresley', 25000, 'suvs'),
	('GT 500', 'gt500', 90000, 'sportsclassics'),
	('Guardian', 'guardian', 180000, 'offroad'),
	('Habanero', 'habanero', 20000, 'vans'),
	('Hakuchou', 'hakuchou', 48000, 'motorcycles'),
	('Hakuchou Drag', 'hakuchou2', 50000, 'motorcycles'),
	('Hellion', 'hellion', 47000, 'offroad'),
	('Hermes', 'hermes', 26000, 'muscle'),
	('Hexer', 'hexer', 16000, 'motorcycles'),
	('Hotknife', 'hotknife', 39500, 'muscle'),
	('Hotring', 'hotring', 45000, 'muscle'),
	('Huntley S', 'huntley', 70000, 'suvs'),
	('Hustler', 'hustler', 24000, 'muscle'),
	('Impaler', 'impaler', 31000, 'muscle'),
	('Infernus', 'infernus', 200000, 'super'),
	('Infernus Classique', 'infernus2', 100000, 'sportsclassics'),
	('Ingot', 'ingot', 8000, 'sedans'),
	('Innovation', 'innovation', 25000, 'motorcycles'),
	('Intruder', 'intruder', 16500, 'sedans'),
	('Issi', 'issi2', 6000, 'compacts'),
	('Issi Retro', 'issi3', 2000, 'compacts'),
	('Issi Sport', 'issi7', 60000, 'sports'),
	('Itali GTB', 'italigtb', 500000, 'super'),
	('Itali GTB Custom', 'italigtb2', 540000, 'super'),
	('Itali GTO', 'italigto', 129999, 'sports'),
	('Jackal', 'jackal', 34000, 'coupes'),
	('JB700', 'jb700', 75000, 'sportsclassics'),
	('Jester', 'jester', 60000, 'sports'),
	('Jester Sport', 'jester2', 70000, 'sports'),
	('Jester Classique', 'jester3', 63000, 'sports'),
	('Journey', 'journey', 6000, 'vans'),
	('Jugular', 'jugular', 79000, 'sports'),
	('Kamacho', 'kamacho', 42000, 'offroad'),
	('Kanjo', 'kanjo', 8000, 'compacts'),
	('Khamelion', 'khamelion', 40000, 'coupes'),
	('Komoda', 'komoda', 210000, 'sports'),
	('Krieger', 'krieger', 1500000, 'super'),
	('Kuruma', 'kuruma', 63000, 'sports'),
	('Lectro', 'lectro', 25000, 'motorcycles'),
	('Locust', 'locust', 82000, 'sports'),
	('Lynx', 'lynx', 62000, 'sports'),
	('Mamba', 'mamba', 80000, 'sports'),
	('Manana', 'manana', 10000, 'sportsclassics'),
	('Manchez', 'manchez', 24500, 'motorcycles'),
	('Massacro', 'massacro', 91000, 'sports'),
	('Massacro sport', 'massacro2', 96000, 'sports'),
	('Mesa', 'mesa', 40000, 'suvs'),
	('Mesa Trail', 'mesa3', 55000, 'suvs'),
	('Michelli GT', 'michelli', 27000, 'sportsclassics'),
	('Monroe', 'monroe', 85000, 'sportsclassics'),
	('Moonbeam', 'moonbeam', 20000, 'vans'),
	('Moonbeam Custom', 'moonbeam2', 25000, 'vans'),
	('Nebula TURBO', 'nebula', 6000, 'sportsclassics'),
	('Nemesis', 'nemesis', 13000, 'motorcycles'),
	('Neo', 'neo', 102000, 'sports'),
	('Pfister Neon', 'neon', 125275, 'sports'),
	('Nero', 'nero', 850000, 'super'),
	('Nero Custom', 'nero2', 1000000, 'super'),
	('Nightblade', 'nightblade', 30000, 'motorcycles'),
	('Nightshade', 'nightshade', 24000, 'muscle'),
	('9F', 'ninef', 85000, 'sports'),
	('9F Cabrio', 'ninef2', 90000, 'sports'),
	('Novak', 'novak', 95000, 'society_state'),
	('Omnis', 'omnis', 130000, 'sports'),
	('Oracle XS', 'oracle2', 35000, 'sedans'),
	('Osiris', 'osiris', 550000, 'super'),
	('Outlaw', 'outlaw', 35000, 'offroad'),
	('Panto', 'panto', 2000, 'compacts'),
	('Paradise', 'paradise', 17000, 'vans'),
	('Paragon', 'paragon', 96000, 'sports'),
	('Pariah', 'pariah', 80000, 'sports'),
	('Patriot', 'patriot', 60000, 'suvs'),
	('Bus Prison', 'pbus', 180000, 'society_police'),
	('Bus Musicale', 'pbus2', 400000, 'society_bahama'),
	('PCJ 600', 'pcj', 10000, 'motorcycles'),
	('Penetrator', 'penetrator', 110000, 'sportsclassics'),
	('Penumbra', 'penumbra', 80000, 'sports'),
	('Penumbra FF', 'penumbra2', 90000, 'sports'),
	('Peyote drag', 'peyote2', 32000, 'muscle'),
	('Peyote Custom', 'peyote3', 20000, 'muscle'),
	('811', 'pfister811', 210000, 'super'),
	('Phoenix', 'phoenix', 35000, 'muscle'),
	('Picador', 'picador', 12000, 'muscle'),
	('Pigalle', 'pigalle', 30000, 'sportsclassics'),
	('Stanier', 'police', 32000, 'society_police'),
	('Buffalo', 'police2', 70000, 'society_police'),
	('Cruiser', 'police3', 85000, 'society_police'),
	('Stanier Banalisée', 'police4', 26000, 'society_police'),
	('Moto', 'policeb', 30000, 'society_police'),
	('Fourgon transport', 'policet', 72000, 'society_police'),
	('Pony', 'pony', 35000, 'vans'),
	('Pony Weed', 'pony2', 40000, 'vans'),
	('Prairie', 'prairie', 10000, 'coupes'),
	('Premier', 'premier', 14000, 'sedans'),
	('Primo', 'primo', 12000, 'sedans'),
	('Primo Custom', 'primo2', 15000, 'sedans'),
	('X80 Proto', 'prototipo', 1200000, 'super'),
	('Coil Raiden', 'raiden', 100101, 'sports'),
	('Rancher XL', 'rancherxl', 35000, 'offroad'),
	('Rapid GT', 'rapidgt', 81000, 'sports'),
	('Rapid GT Cabrio', 'rapidgt2', 85000, 'sports'),
	('Rapid GT3', 'rapidgt3', 35000, 'muscle'),
	('RatBike', 'ratbike', 10000, 'motorcycles'),
	('Ratloader', 'ratloader', 6000, 'vans'),
	('Ratloader Custom', 'ratloader2', 35000, 'vans'),
	('Reaper', 'reaper', 700000, 'super'),
	('Rebel', 'rebel2', 18000, 'offroad'),
	('Regina', 'regina', 7000, 'sportsclassics'),
	('Retinue', 'retinue', 43500, 'sportsclassics'),
	('Rhapsody', 'rhapsody', 4000, 'compacts'),
	('Riata', 'riata', 36000, 'offroad'),
	('Fourgon Blindé', 'riot', 130000, 'society_police'),
	('Fourgon Antiémeute', 'riot2', 500000, 'society_police'),
	('Rocoto', 'rocoto', 100000, 'suvs'),
	('R Rocket', 'rrocket', 50000, 'motorcycles'),
	('Ruffian', 'ruffian', 24000, 'motorcycles'),
	('Ruiner', 'ruiner', 26000, 'coupes'),
	('Rumpo', 'rumpo', 30000, 'vans'),
	('Rumpo Trail', 'rumpo3', 27000, 'vans'),
	('Ruston', 'ruston', 65000, 'sports'),
	('Sabre Turbo', 'sabregt', 32000, 'muscle'),
	('Sabre GT', 'sabregt2', 34000, 'muscle'),
	('Sanchez Pro', 'sanchez', 26000, 'motorcycles'),
	('Sanchez', 'sanchez2', 25000, 'motorcycles'),
	('Sanctus', 'sanctus', 30000, 'motorcycles'),
	('Sandking', 'sandking', 30000, 'offroad'),
	('Sandking XL', 'sandking2', 35000, 'offroad'),
	('Savestra', 'savestra', 45000, 'sportsclassics'),
	('SC1', 'sc1', 450000, 'super'),
	('Schafter', 'schafter', 33000, 'sedans'),
	('Schafter V12', 'schafter3', 55000, 'sports'),
	('Schafter', 'schafter5', 120000, 'society_state'),
	('Schlagen', 'schlagen', 100000, 'sports'),
	('Schwarzer', 'schwarzer', 95000, 'sports'),
	('Scorcher (velo)', 'scorcher', 3400, 'motorcycles'),
	('Seminole Frontier', 'seminole2', 20000, 'offroad'),
	('Sentinel Cabrio', 'sentinel', 17000, 'coupes'),
	('Sentinel XS', 'sentinel2', 14000, 'coupes'),
	('Sentinel3', 'sentinel3', 60000, 'sports'),
	('Seven 70', 'seven70', 108000, 'sports'),
	('Sheava', 'sheava', 150000, 'super'),
	('Slamvan', 'slamvan', 30000, 'vans'),
	('Slamvan Custom', 'slamvan3', 40000, 'vans'),
	('Sovereign', 'sovereign', 22000, 'motorcycles'),
	('Specter', 'specter', 85000, 'sports'),
	('Specter Custom', 'specter2', 89000, 'sports'),
	('Stafford', 'stafford', 90000, 'muscle'),
	('Stalion', 'stalion', 14000, 'muscle'),
	('Stalion Course', 'stalion2', 37000, 'muscle'),
	('Stanier', 'stanier', 16500, 'sedans'),
	('Stinger', 'stinger', 50000, 'sportsclassics'),
	('Stinger GT', 'stingergt', 65000, 'sportsclassics'),
	('Stratum', 'stratum', 9000, 'sedans'),
	('Streiter', 'streiter', 75000, 'sports'),
	('Limo', 'stretch', 120000, 'society_state'),
	('Sugoi', 'sugoi', 55000, 'sports'),
	('Sultan', 'sultan', 33000, 'sedans'),
	('Sultan Retro', 'sultan2', 32000, 'sedans'),
	('Sultan RS', 'sultanrs', 120000, 'super'),
	('Super Diamond', 'superd', 75000, 'sedans'),
	('Surano', 'surano', 83000, 'sports'),
	('Surfer', 'surfer', 14000, 'vans'),
	('Surge', 'surge', 13500, 'sedans'),
	('Swinger', 'swinger', 73500, 'sportsclassics'),
	('T20', 't20', 1020000, 'super'),
	('FoodTruck', 'taco', 150000, 'society_cluckin'),
	('Tailgater', 'tailgater', 16000, 'sedans'),
	('Taipan', 'taipan', 3500000, 'super'),
	('Tampa', 'tampa', 15000, 'muscle'),
	('Tampa Drift', 'tampa2', 90000, 'muscle'),
	('Taxi', 'taxi', 30000, 'society_taxi'),
	('Tempesta', 'tempesta', 600000, 'super'),
	('Thrax', 'thrax', 1200000, 'super'),
	('Thrust', 'thrust', 22500, 'motorcycles'),
	('Tigon', 'tigon', 750000, 'sportsclassics'),
	('Torero', 'torero', 82750, 'sportsclassics'),
	('Tornado', 'tornado', 7000, 'sportsclassics'),
	('Tornado Rodriguez', 'tornado4', 7000, 'sportsclassics'),
	('Tornado Custom', 'tornado5', 8000, 'sportsclassics'),
	('Tornado Rat-rod', 'tornado6', 7000, 'sportsclassics'),
	('Pegassi Toros', 'toros', 150000, 'suvs'),
	('DépaneuseG', 'towtruck', 100000, 'society_mecano'),
	('DépaneuseP', 'towtruck2', 95000, 'society_mecano'),
	('Tri bike (velo)', 'tribike3', 2000, 'motorcycles'),
	('Trophy Truck', 'trophytruck', 350000, 'offroad'),
	('Buggy Raid', 'trophytruck2', 350000, 'offroad'),
	('Tropos', 'tropos', 100000, 'sports'),
	('Tulip', 'tulip', 30000, 'muscle'),
	('Turismo Classique', 'turismo2', 78000, 'sportsclassics'),
	('Turismo R', 'turismor', 700000, 'super'),
	('Tyrant', 'tyrant', 340000, 'super'),
	('Tyrus', 'tyrus', 800000, 'super'),
	('Oracle Banalisée', 'umoracle', 60000, 'society_police'),
	('Vacca', 'vacca', 280000, 'super'),
	('Vader', 'vader', 11000, 'motorcycles'),
	('Vagner', 'vagner', 1260000, 'super'),
	('Vagrant', 'vagrant', 110000, 'offroad'),
	('Vamos', 'vamos', 32000, 'muscle'),
	('Verlierer', 'verlierer2', 120000, 'sports'),
	('Vigero', 'vigero', 31000, 'muscle'),
	('Vindicator', 'vindicator', 35000, 'motorcycles'),
	('Virgo', 'virgo', 8000, 'muscle'),
	('Virgo Custom', 'virgo2', 17000, 'muscle'),
	('Viseris', 'viseris', 70000, 'sportsclassics'),
	('Visione', 'visione', 950000, 'super'),
	('Voltic', 'voltic', 60000, 'sports'),
	('Voodoo', 'voodoo', 15000, 'muscle'),
	('Vortex', 'vortex', 21000, 'motorcycles'),
	('VSTR', 'vstr', 130000, 'sports'),
	('Warrener', 'warrener', 11000, 'sportsclassics'),
	('Washington', 'washington', 15500, 'sedans'),
	('Windsor', 'windsor', 45000, 'coupes'),
	('Windsor Drop', 'windsor2', 80000, 'sedans'),
	('Woflsbane', 'wolfsbane', 12000, 'motorcycles'),
	('Ocelot XA-21', 'xa21', 1562500, 'super'),
	('XLS', 'xls', 55000, 'suvs'),
	('XLS', 'xls2', 145000, 'society_state'),
	('Yosemite', 'yosemite', 25000, 'vans'),
	('Yosemite Drift', 'yosemite2', 45000, 'vans'),
	('Yosemite Rancher', 'yosemite3', 30000, 'offroad'),
	('Yosemite Rancher', 'yosemite3', NULL, 'society_mecano'),
	('Yosemite Rancher', 'yosemite3', NULL, 'society_vigneron'),
	('Youga', 'youga', 80000, 'vans'),
	('Youga Classique', 'youga2', 85000, 'society_tailor'),
	('Youga Classique', 'youga2', 85000, 'vans'),
	('Youga classic 4x4', 'youga3', 95000, 'vans'),
	('Z190', 'z190', 40000, 'sportsclassics'),
	('Zentorno', 'zentorno', 950000, 'super'),
	('Zion', 'zion', 14000, 'coupes'),
	('Zion Cabrio', 'zion2', 17000, 'coupes'),
	('Zion classique', 'zion3', 30000, 'sportsclassics'),
	('Zombie', 'zombiea', 15000, 'motorcycles'),
	('Zombie Luxuary', 'zombieb', 16000, 'motorcycles'),
	('Zorrusso', 'zorrusso', 850000, 'super'),
	('Z-Type', 'ztype', 96500, 'sportsclassics')
;
