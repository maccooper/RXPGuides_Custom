local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[

#name 12-15 Darkshore
#group Mac Custom
#subgroup 10-20
#next 15-16 Westfall/Redridge

step
    .goto Darkshore, 36.8, 44.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Laird|r
    .turnin 6342 >> Turn in Flight to Auberdine
    .accept 6343 >> Accept Return to Nessa
    .target Laird

step
    .goto Darkshore, 35.8, 43.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Cerellean Whiteclaw|r
    .accept 963 >> Accept For Love Eternal
    .target Cerellean Whiteclaw
step
    .goto Darkshore, 37.0, 44.0

    .accept 983 >> Accept Buzzbox 827
    .target Wizbang Cranktoggle

step 
    .goto Darkshore, 37.3, 44.2
    >>Click the |cFF00FF25Wanted Poster 827|r
    .accept 98025 >> Accept WANTED: Jai'vhanel

step
    .goto Darkshore, 36.71, 44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accept Washed Ashore
    .target Gwennyth Bly'Leggonde

step
    .goto Darkshore,38.80,43.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tharnariun Treetender|r
    .accept 2118 >> Accept Plagued Lands
    .target Tharnariun Treetender
    
step
    .goto Darkshore,39.20,43.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Terenthis|r
    .accept 984 >> Accept How Big a Threat?
    .target Terenthis

step
    #map Darkshore
    --xy
    .goto Felwood, 18.81, 26.69
    >>Loot the |cFFDB2EEFBeached Sea Creature|r for the |cFF00BCD4Sea Creature Bones|r
    .complete 3524, 1

step
    #map Darkshore
    --xy
    .goto Felwood, 22.39, 29.45
    >>Discover the Furbolg Camp
    .complete 984,1 --Find a corrupt furbolg camp

step
    #label RabidThistle
    .goto Darkshore,38.47,57.92,50,0
    .goto Darkshore,39.79,58.33,50,0
    .goto Darkshore,38.86,60.72,50,0
    .goto Darkshore,38.47,57.92
    .use 7586 >>|cFFFCDC00Use|r |T134335:0|t[Tharnariun's Hope] |cFFFCDC00on a|r |cFFFF5722Rabid Thistle Bear|r
    .complete 2118,1
    .unitscan Rabid Thistle Bear

step
    #map Darkshore
    -- xy
    .goto Felwood,19.13,21.39
    >>Click the |cFFDB2EEFBuzzbox 827|r on the ground
    .turnin 983 >> Turn in Buzzbox 827
    .accept 1001 >> Accept Buzzbox 411
    .isQuestComplete 983

step
    .goto Darkshore, 36.71, 44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gwennyth Bly'Leggonde|r
    .target Gwennyth Bly'Leggonde
    .turnin 3524 >> Turn in Washed Ashore
    .accept 4681 >> Accept Washed Ashore

step
    #map Darkshore
    .goto Felwood,13.63,21.44
    >>Loot the |cFFDB2EEFSkeletal Sea Turtle|r for the |cFF00BCD4Sea Turtle Remains|r
    .complete 4681,1

step
    #map Darkshore
    .goto Darkshore, 36.71, 44.98,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Turn in Washed Ashore
    .target Gwennyth Bly'Leggonde

step
    #map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tharnariun Treetender|r
    .target Tharnariun Treetender
    .turnin 2118 >> Turn in Plagued Lands
    .accept 2138 >> Accept Cleansing of the Infected
    

step
    #map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Terenthis|r
    .target Terenthis
    .goto Felwood, 22.24, 18.22
    .turnin 984 >> Turn in How Big a Threat?
    .accept 985 >> Accept How Big a Threat?
    .accept 4761 >> Accept Thundris Windweaver

step
    #map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thundris Windweaver|r
    .target Thundris Windweaver
    .goto Felwood, 19.98, 14.40
    .turnin 4761 >> Turn in Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River
    .accept 958 >> Accept Tools of the Highborne
    .accept 954 >> Accept Bashal'Aran


step
    #map Darkshore
    #completewith next
    .goto Felwood, 27.70, 10.03,60 >> Travel to Bashal'Aran

step
    #map Darkshore
    #label bears1
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Asterion|r
    >>|cFFFCDC00Avoid killing|r |cFFFF5722Vile Grell|r and |cFFFF5722Vile Sprites|r ...
    .turnin 954 >> Turn in Bashal'Aran
    .accept 955 >> Accept Bashal'Aran
    .target Asterion

step
    .goto Darkshore,44.76,37.91,40,0
    .goto Darkshore,45.43,39.15,40,0
    .goto Darkshore,46.38,39.81,40,0
    .goto Darkshore,47.46,38.86,40,0
    .goto Darkshore,44.80,36.91,40,0
    .goto Darkshore,44.80,38.03
    >>Kill |cFFFF5722Vile Grell|r and |cFFFF5722Vile Sprites|r. Loot them for their |cFF00BCD4Grell Earrings|r
    .complete 955,1
    .mob Vile Grell
    .mob Vile Sprite
step
    #map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Asterion|r
    .turnin 955 >> Turn in Bashal'Aran
    .accept 956 >> Accept Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.88,38.56,40,0
    .goto Darkshore,46.70,39.21,40,0
    .goto Darkshore,47.69,38.71,40,0
    .goto Darkshore,45.07,38.76
    >>Kill |cFFFF5722Deth'ryll Satyrs|r. Loot them for the |cFF00BCD4Ancient Moonstone Seal|r
    .complete 956,1

step
    #map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Asterion|r
    .turnin 956 >> Turn in Bashal'Aran
    .accept 957 >> Accept Bashal'Aran
    .target Asterion

step
    #label Ameth
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sentinel Tysha Moonblade|r
    .target Sentinel Tysha Moonblade
    .goto Darkshore,40.30,59.70
    .accept 953 >> Accept The Fall of Ameth'Aran
step
    #completewith TheLay
    >>Kill |cFFFF5722Anaya Dawnrunner|r. Loot her for her |cFF00BCD4Pendant|r
    >>|cFFFF5722Anaya Dawnrunner|r |cFFFCDC00patrols Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner

step
    #completewith TheLay
    >>Kill |cFFFF5722Cursed Highborne|r, |cFFFF5722Writhing Highborne|r and |cFFFF5722Wailing Highborne|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
    #map Darkshore
    .goto Felwood,25.66,29.01
    >>Click the |cFFDB2EEFThe Fall of Ameth'Aran|r
    .complete 953,2 -- The Fall of Ameth'Aran
step
    #map Darkshore
    .goto Darkshore, 42.5, 61.8
    >>Click the |cFFDB2EEFAncient Flame|r
    .complete 957,1
step
    #label TheLay
    .goto Darkshore,43.3,58.5
    >>Click the |cFFDB2EEFThe Lay of Ameth'Aran|r
    .complete 953,1 -- The Lay of Ameth'Aran

step
    #label Jai'vhanel
    .goto Darkshore 45.3,58.1
    >>Kill |cFFFF5722Jai'vhanel|r. Loot her for her |cFF00BCD4Feather of Jai'vhanel|r

step
    #completewith next
    >>Kill |cFFFF5722Anaya Dawnrunner|r. Loot her for her |cFF00BCD4Pendant|r
    >>|cFFFF5722Anaya Dawnrunner|r |cFFFCDC00patrols Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    #map Darkshore
    .goto Darkshore, 40.3,59.8
    .target Sentinel Tysha Moonblade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sentinel Tysha Moonblade|r
    .turnin 953 >> Turn in The Fall of Ameth'Aran
step
    #completewith next
    >>Kill |cFFFF5722Rabid Thistle Bears|r. Need to finish before turnins
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear

step
    -- Murlocs here are fucked I might need better gear and/or food stam buff?
    >>Loot the Sea Creature
    .goto Darkshore,36.02,70.79
    .accept 4728 >> Accept Beached Sea Creature
step
    >>Kill |cFFFF5722Rabid Thistle Bears|r. Need to finish before turnins
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #map Darkshore
    .goto Felwood,19.64,39.52
    >>Click the |cFFDB2EEFBeached Sea Turtle|r
    .accept 4722 >> Accept Beached Sea Turtle -- Turtle 1 (Central Furbolg Area)
step
    >>Kill |cFFFF5722Blackwood Pathfinders|r and |cFFFF5722Blackwood Windtalkers|r
    .goto Darkshore,39.84,53.82,50,0
    .goto Darkshore,40.03,56.24,50,0
    .goto Darkshore,39.34,56.58,50,0
    .goto Darkshore,39.84,53.82
    .complete 985,1 -- Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker

step
    #map Darkshore
    .goto Felwood,19.13,21.39
    >>Click the |cFFDB2EEFBuzzbox 827|r on the ground
    .turnin 983 >> Turn in Buzzbox 827
    .accept 1001 >> Accept Buzzbox 411
    .isQuestComplete 983
step
    #map Darkshore
    #label ManyBeached
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gwennyth Bly'Leggonde|r
    .target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .turnin 4722 >> Turn in Beached Sea Turtle
    .turnin 4728 >> Turn in Beached Sea Creature
step
    #map Darkshore
    .isQuestComplete 963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Cerellean Whiteclaw|r
    .target Cerellean Whiteclaw
    .goto Felwood,18.10,18.48
    >>|cFF00FF25Turn in Together!!!!|r
    >>|cFF00FF25Turn in Together!!!!|r
    >>|cFF00FF25Turn in Together!!!!|r
    .turnin 963 >> Turn in For Love Eternal
step
    #map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sentinel Glynda Nal'Shea|r
    .target Sentinel Glynda Nal'Shea
    .goto Felwood,20.34,18.12
    .turnin 4811 >> Turn in The Red Crystal
    .accept 4812 >> Accept As Water Cascades
step
    .goto Darkshore,37.78,44.06
    .use 14338 >>|cFFFCDC00Use the|r |T134865:0|t[Empty Water Tube] |cFFFCDC00at the Moonwell|r
    .complete 4812,1

step
    #map Darkshore
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
step
    #map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Terenthis|r
    .target Terenthis
    .goto Felwood,22.24,18.22
    .turnin 985 >> Turn in How Big a Threat?
    .accept 986 >> Accept A Lost Master
step
    #map Darkshore
    .goto Darkshore,39.26,43.04,5,0
    .goto Felwood,21.86,18.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sentinel Elissa Starbreeze|r
    .accept 965 >> Accept The Tower of Althalaxx
    .target Sentinel Elissa Starbreeze
step
    #map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gorbold Steelhand|r
    .target Gorbold Steelhand
    .goto Felwood,20.80,15.58
    .accept 982 >> Accept Deep Ocean, Vast Sea
step
    #completewith next
    .goto Darkshore,38.95,29.36,30 >> Travel to the wrecked Silver Dawning ship
step
    #map Darkshore
    .goto Darkshore,38.95,29.36,10,0
    .goto Felwood,20.94,1.49
    >>|cFFFCDC00Enter the wrecked Silver Dawning ship through the broken hull on the side|r
    >>Loot the |cFF00BCD4Silver Dawning's Lockbox|r on the ground
    .complete 982,1

step
    #completewith next
    .goto Darkshore,40.30,27.56,30 >> Travel to the wrecked Mist Veil ship
step
    #label MistVeil
    .goto Darkshore,40.30,27.56,10,0
    .goto Darkshore,39.69,27.45
    >>|cFFFCDC00Enter the wrecked Mist Veil ship through the broken hull on the bottom|r
    >>Loot the |cFF00BCD4Mist Veil's Lockbox|r on the ground
    .complete 982,2
step
    #map Darkshore
    .goto Felwood,25.15,4.61
    >>Click the |cFFDB2EEFBeached Sea Creature|r
    .accept 4723 >> Accept Beached Sea Creature
step
    #map Darkshore
    .goto Felwood,25.19,1.29
    >>Click the |cFFDB2EEFBuzzbox 411|r on the ground
    .turnin 1001 >> Turn in Buzzbox 411
    .accept 1002 >> Accept Buzzbox 323
    .isQuestComplete 1001

step
    .goto Darkshore,44.18,20.60
    >>Click the |cFFDB2EEFBeached Sea Turtle|r
    .accept 4725 >> Accept Beached Sea Turtle
step
    .goto Darkshore,50.81,25.50
    .use 12350 >>|cFFFCDC00Use the|r |T134865:0|t[Empty Sampling Tube] |cFFFCDC00at the Cliffspring River|r
    .complete 4762,1 -- Cliffspring River
step
    #map Darkshore
    .goto Winterspring,3.10,20.90
    >>Click the |cFFDB2EEFBeached Sea Turtle|r
    .accept 4727 >> Accept Beached Sea Turtle
step
    #map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Balthule Shadowstrike|r
    .target Balthule Shadowstrike
    .goto Winterspring,4.82,27.18
    .turnin 965 >> Turn in The Tower of Althalaxx
    .accept 966 >> Accept The Tower of Althalaxx
step
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Kill |cFFFF5722Dark Strand Fanatics|r. Loot them for their |cFF00BCD4Parchment|r
    .complete 966,1
    .mob Dark Strand Fanatic
step
    #map Darkshore
    .goto Winterspring,4.82,27.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Balthule Shadowstrike|r
    .turnin 966 >> Turn in The Tower of Althalaxx
    .accept 967 >> Accept The Tower of Althalaxx
    .target Balthule Shadowstrike

step
    .goto Darkshore,55.66,34.89
    >>Loot the |cFF00BCD4Scaber Stalks|r and |cFF00BCD4Death Cap|r on the ground
    >>|cFFFCDC00Stay on the upper section. If the|r |cFF00BCD4Death Cap|r |cFFFCDC00is not at the ...|r
    >>|cFFFCDC00Don't face your back to the center!|r |cFFFF5722Stormscale Wave Riders|r ...
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Kill |cFFFF5722Den Mother|r
    >>|cFFFCDC00Be aware of the|r |cFFFF5722Thistle Cubs|r |cFFFCDC00which can stun you for 2 seconds|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .mob Thistle Cub
step
    #map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Asterion|r
    .target Asterion
    .goto Felwood,27.70,10.03
    .turnin 957 >> Turn in Bashal'Aran
step
    #map Darkshore
    .goto Felwood,31.29,24.14
    >>Click the |cFFDB2EEFThe Red Crystal|r
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within

step
    #map Darkshore
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Tharnariun Treetender|r
    .turnin 2139 >> Turn in Tharnariun's Hope
    .target Tharnariun Treetender
step
    #map Darkshore
    .goto Felwood,20.80,15.58
    .target Gorbold Steelhand
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gorbold Steelhand|r
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
step
    #map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thundris Windweaver|r
    .target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 958 >> Turn in Tools of the Highborne
    .turnin 4762 >> Turn in The Cliffspring River
    .isQuestComplete 958
step
    #map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thundris Windweaver|r
    .target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4762 >> Turn in The Cliffspring River
step
    #map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sentinel Glynda Nal'Shea|r
    .target Sentinel Glynda Nal'Shea
    .goto Felwood,20.34,18.12
    .turnin 4813 >> Turn in The Fragments Within

step
    #map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Barithras Moonshade|r
    .target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .turnin 947 >> Turn in Cave Mushrooms
    .accept 948 >> Accept Onu
step
    #map Darkshore
    #label ManyBeached2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gwennyth Bly'Leggonde|r
    .target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .turnin 4723 >> Turn in Beached Sea Creature
    .turnin 4725 >> Turn in Beached Sea Turtle
    .turnin 4727 >> Turn in Beached Sea Turtle
step
    .goto Darkshore,37.00,44.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Innkeeper Shaussiy|r
    .target Innkeeper Shaussiy
    .home >> Set hearth to Auberdine

]])

RXPGuides.RegisterGuide([[
#name 15-16 Westfall/Redridge
#group Mac Custom
#subgroup 10-20
#next 16-18 Hall of Thanes

step
    #completewith next
    +Take boat from Auberdine to Stormwind, jump off boat when near Westfall

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow
    .accept 64 >> Accept The Forgotten Heirloom
    .turnin 184 >> Turn in Furlbrow's Deed
    .target +Farmer Furlbrow
    .goto Westfall, 59.95, 19.35
    .accept 36 >> Accept Westfall Stew
    .goto Westfall, 59.91, 19.41
    .target +Verna Furlbrow
    .isOnQuest 184

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 64 >> Accept The Forgotten Heirloom
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 36 >> Accept Westfall Stew
    .target +Verna Furlbrow
    .goto Westfall,59.91,19.41
step
    #label KillingStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .target Farmer Saldean
    .goto Westfall,56.04,31.23
    .accept 9 >> Accept The Killing Fields
step
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Turn in Westfall Stew
    .target Salma Saldean
step
    #completewith next
    >>Kill |cRXP_ENEMY_Harvest Watchers|r en route
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher


step
    #label Gryan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan|r
    .accept 65 >> Accept The Defias Brotherhood
    .accept 12 >> Accept The People's Militia
    .target Gryan Stoutmantle
    .goto Westfall,56.33,47.52,5,0
    .accept 102 >> Accept Patrolling Westfall
    .goto Westfall,56.42,47.62
    .target Captain Danuvin
step
    .goto Westfall,52.5,53.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alba|r
    .target Alba Fairmoon
    .accept 92742 >> Accept Testing the Wells

-- Fly Redridge (part 1)

step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thor|r
    .target Thor
    .fly Redridge >> Fly to Redridge
    .zoneskip Redridge Mountains
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Foreman Oslow|r
    .goto Redridge Mountains,32.13,48.63
    .accept 125 >> Accept The Lost Tools
    .target Foreman Oslow
    .xp <16

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Verner Osgood|r
    .target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >> Accept The Price of Shoes
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shawn|r
    .target Shawn
    .goto Redridge Mountains,29.31,53.63
    .accept 3741 >> Accept Hilary's Necklace
step
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Magistrate Solomon|r
    .target Magistrate Solomon
    .accept 120 >> Accept Messenger to Stormwind
step
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Darcy|r
    >>|cFF00FF25Darcy|r |cFFFCDC00walks around inside the Inn|r
    .target Darcy
    .accept 129 >> Accept A Free Lunch
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Wiley the Black|r
    .target Wiley the Black
    .turnin 65 >> Turn in The Defias Brotherhood
    .accept 132 >> Accept The Defias Brotherhood

-- back to westfall

step
    .goto Redridge Mountains,30.40,59.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ariena Stormfeather|r
    .target Ariena Stormfeather
    .fly Westfall >> Fly to Sentinel Hill
    .zoneskip Westfall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan|r
    .turnin 132 >> Turn in The Defias Brotherhood
    .accept 135 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
step
    #completewith next
    >>Kill |cRXP_ENEMY_Harvest Watchers|r en route
    >>Try to get to 15/20, if mobs available from here
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto Westfall,56.2,34.5
    >>Open |cRXP_PICK_Alexston's Chest|r. Loot it for |cRXP_LOOT_A Simple Compass|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 399,1 --A Simple Compass (1)
    .isOnQuest 399
step
    +Gnolls if low on XP (skip this step if don't need XP)
step
    #completewith next
    >>Kill |cRXP_ENEMY_Harvest Watchers|r en route
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto Westfall,46.1,38.1
    >>Use the Well Water Sample Kit at the well
    .use 254545 -- Well Water Sample Kit
    .complete 92742,2 -- Molsen Farm

step
    >>Kill |cRXP_ENEMY_Harvest Watchers|r en route. Loot them for their |cRXP_LOOT_Okra|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    >>Talk to |cRXP_FRIENDLY_Farmer Saldean|r and then |cRXP_FRIENDLY_Salma|r inside the house
    .turnin 9 >> Turn in The Killing Fields
    .vendor >> Vendor Trash
    .target +Farmer Saldean
    .goto Westfall,56.04,31.23
step
    >>Talk to |cRXP_FRIENDLY_Salma|r
    .accept 22 >> Accept Goretusk Liver Pie
    .turnin 22 >> Turn in Goretusk Liver Pie
    .accept 38 >> Accept Westfall Stew
    .turnin 38 >> Turn in Westfall Stew
    .itemcount 723,8 -- Livers
    .itemcount 732,3 -- Okra
    .itemcount 731,3 -- Snouts
    .itemcount 730,3 -- Murloc Eyes
    .itemcount 729,3 -- Vulture Meat
step
    >>Talk to |cRXP_FRIENDLY_Salma|r
    .accept 38 >> Accept Westfall Stew
    .turnin 38 >> Turn in Westfall Stew
    .goto Westfall,56.42,30.52
    .target +Salma Saldean
    .itemcount 732,3 -- Okra
    .itemcount 731,3 -- Snouts
    .itemcount 730,3 -- Murloc Eyes
    .itemcount 729,3 -- Vulture Meat
step
    >>Talk to |cRXP_FRIENDLY_Salma|r
    .accept 22 >> Accept Goretusk Liver Pie
    .turnin 22 >> Turn in Goretusk Liver Pie
    .goto Westfall,56.42,30.52
    .target +Salma Saldean
    .itemcount 723,8 -- Livers

step
    >>Use |cRXP_LOOT_Precessive Autocognition Assembly|r in bags
    .accept 92910 >> Accept Harvesting the Harvesters
    .itemcount 255155,1
    .use 255155
step
    .goto Westfall,51.5,32.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozwin|r
    .target Ozwin Ironsprocket
    .turnin 92910 >> Turn in Harvesting the Harvesters
    .isOnQuest 92910
step
    .goto Westfall,51.5,32.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozwin|r
    .accept 92909 >> Accept Harvesting the Harvesters
    .turnin 92909 >> Turn in Harvesting the Harvesters
    .itemcount 255007,14
    .itemcount 255010,5
step
    .goto Westfall,49.33,19.26
    >>Open |cRXP_PICK_Furlbrow's Wardrobe|r. Loot it for |cRXP_LOOT_Furlbrow's Pocket Watch|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 64,1 --Furlbrow's Pocket Watch (1)
step
    .goto Westfall,56.6,18.7
    >>Use the Well Water Sample Kit at the well
    .use 254545 -- Well Water Sample Kit
    .complete 92742,1 -- Jansen Stead
step
    >>Talk to |cRXP_FRIENDLY_Farmer Furlbrow|r
    .turnin 64 >> Turn in The Forgotten Heirloom
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .goto Elwynn Forest,24.540,74.672
    .target Deputy Rainer
    .isOnQuest 239
step
    .goto Elwynn Forest,34.660,84.482
    .target Ma Stonefield
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88 >> Turn in Princess Must Die!
    .isOnQuest 88
step << Priest/Warlock/Paladin
    .trainer >> Train 14
step << Warrior
    .goto Elwynn Forest,41.086,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lyria Du Lac|r
    .target Lyria Du Lac
    .trainer
    .train 1160
    .train 285
    .train 694
step
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Smith Argus|r
    .target Smith Argus
    .turnin 118 >> Turn in The Price of Shoes
    .accept 119 >> Accept Return to Verner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25General Marcus Jonathan|r
    .target General Marcus Jonathan
    .goto StormwindClassic,69.2,82.8
    .turnin 120 >> Turn in Messenger to Stormwind
    .accept 121 >> Accept Messenger to Stormwind

step << Skip --Turn in when going to HoT after RR 2
    .goto StormwindClassic,49.193,30.278
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Baros Alexston|r
    .turnin 399 >> Turn in Humble Beginnings
    .target Baros Alexston
step
    .goto StormwindClassic,78.3,70.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Master Mathias Shaw|r
    .turnin 135 >> Turn in The Defias Brotherhood
    .accept 141 >> Accept The Defias Brotherhood
    .target Master Mathias Shaw
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Fly to Redridge Mountains
    .target Dungar Longdrink
step
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
    .turnin 129 >> Turn in A Free Lunch
    .accept 130 >> Accept Visit the Herbalist
    .target Guard Parker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Deputy Feldon|r
    .target Deputy Feldon
    .goto Redridge Mountains,30.70,60.00
    .turnin 244 >> Turn in Encroaching Gnolls
    .accept 246 >> Accept Assessing the Threat
    .accept 98407 >> Accept Show of Force

step
    .goto Redridge Mountains,29.49,82.80,45,0
    .goto Redridge Mountains,32.52,81.78,45,0
    .goto Redridge Mountains,43.18,72.22,45,0
    .goto Redridge Mountains,31.13,82.18
    >>Kill |cFFFF5722Lakeshire Mongrels|r and |cFFFF5722Lakeshire Poachers|r
    >>Funnel loot 1 by 1 for necklaces (thrashers only)
    .complete 246,1 --Lakeshire Mongrel (10)
    .complete 246,2 --Lakeshire Poacher (6)
    .mob Lakeshire Mongrel
    .mob Lakeshire Poacher
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Deputy Feldon|r
    .target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >> Turn in Assessing the Threat
    .turnin 98407 >> Turn in Show of Force
    .itemcount 280911,5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Deputy Feldon|r
    .target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >> Turn in Assessing the Threat
step
    >>Open the |cFFDB2EEFGlinting Mud|r. Loot it for |cFF00BCD4Hilary's Necklace|r
    >>|cFFFCDC00It has multiple spawn locations in the Lake|r
    .goto Redridge Mountains,27.80,56.05,70,0
    .goto Redridge Mountains,26.56,50.63,70,0
    .goto Redridge Mountains,23.96,55.17,70,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,31.12,54.21,70,0
    .goto Redridge Mountains,34.03,55.34,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .complete 3741,1 --Hilary's Necklace (1)

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Foreman Oslow|r
    .goto Redridge Mountains,32.13,48.63
    .accept 125 >> Accept The Lost Tools
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Verner Osgood|r
    .target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Turn in Return to Verner
    .accept 124 >> Accept A Baying of Gnolls
    .accept 122 >> Accept Underbelly Scales
step
    >>|cFFFCDC00Jump into the Lake|r
    >>Open the |cFFDB2EEFSunken Chest|r. Loot it for |cFF00BCD4Oslow's Toolbox|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Foreman Oslow|r
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >> Turn in The Lost Tools
    .accept 89 >> Accept The Everstill Bridge
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hilary|r
    .target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Turn in Hilary's Necklace


step
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7
    >>Kill |cFFFF5722Redridge Brutes|r and |cFFFF5722Redridge Mystics|r. Loot them for |cFF00BCD4Iron Pikes|r and |cFF00BCD4Iron Rivets|r
    >>Skip loot quest if too out of the way to finish all.
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Verner Osgood|r
    .target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >> Turn in A Baying of Gnolls
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Foreman Oslow|r
    .target Foreman Oslow
    .goto Redridge Mountains,32.10,48.70
    .turnin 89 >> Turn in The Everstill Bridge
    .itemcount 1013,5
    .itemcount 2856,5
step
    .goto Redridge Mountains,30.40,59.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ariena Stormfeather|r
    .target Ariena Stormfeather
    .fly Westfall >> Fly to Sentinel Hill
    .zoneskip Westfall
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan|r
    .turnin 12 >> Turn in The People's Militia
    .accept 13 >> Accept The People's Militia
    .turnin 141 >> Turn in The Defias Brotherhood
    .accept 142 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle

step
    >>Talk to |cRXP_FRIENDLY_Danuvin|r
    .turnin 102 >> Turn in Patrolling Westfall
    .goto Westfall,56.42,47.62
    .target +Captain Danuvin
    .isQuestComplete 102
step
    .goto Westfall,52.5,53.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alba|r
    .target Alba Fairmoon
    .turnin 92742 >> Turn in Testing the Wells

step
    #completewith next
    >>Kill |cFFFF5722Defias Pillagers|r and |cFFFF5722Defias Looters|r
    .complete 13,1 -- Defias Pillager slain (15)
    .complete 13,2 -- Defias Looter slain (15)
    .mob Defias Pillager
    .mob Defias Looter

step
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69
    >>Kill the |cFFFF5722Defias Messenger|r. Loot him for his |cFF00BCD4Mysterious Message|r
    >>|cFFFCDC00The|r |cFFFF5722Defias Messenger|r |cFFFCDC00spawns in Moonbrook|r
    >>|cFFFCDC00He has a 5 minute respawn timer|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger

step
    >>Kill |cFFFF5722Defias Pillagers|r and |cFFFF5722Defias Looters|r
    .complete 13,1
    .complete 13,2
step
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gryan Stoutmantle|r
    .turnin 13 >> Turn in The People's Militia
    .accept 14 >> Accept The People's Militia
    .turnin 142 >> Turn in The Defias Brotherhood
step
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25The Defias Traitor|r
    .accept 155 >> Accept The Defias Brotherhood
    .target The Defias Traitor
step
    .goto Westfall,42.56,71.71
    >>Escort the |cFF00FF25The Defias Traitor|r to The Deadmines
    >>|cFFFCDC00Stay beside|r |cFF00FF25The Defias Traitor|r |cFFFCDC00at all times!|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding
    .target The Defias Traitor
step
    .goto Westfall,44.6,80.2
    >>Kill |cFFFF5722Defias Highwaymen|r, |cFFFF5722Defias Pathstalkers|r and |cFFFF5722Defias Knuckledusters|r
    .complete 14,1 -- Defias Highwayman slain (15)
    .complete 14,2 -- Defias Pathstalker slain (5)
    .complete 14,3 -- Defias Knuckleduster slain (5)
    .mob Defias Highwayman
    .mob Defias Pathstalker
    .mob Defias Knuckleduster
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gryan Stoutmantle|r
    .turnin 155 >> Turn in The Defias Brotherhood
    .accept 166 >> Accept The Defias Brotherhood
    .turnin 14 >> Turn in The People's Militia
    .target Gryan Stoutmantle

step
    .goto Westfall, 56.55, 52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor

step
    .goto StormwindClassic,65.4,21.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Wilder Thistlenettle|r
    .accept 167 >> Accept Oh Brother. . .
    .accept 168 >> Accept Collecting Memories
    .target Wilder Thistlenettle
step
    .goto StormwindClassic,55.5,12.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shoni the Shilent|r
    .accept 2040 >> Accept Underground Assault
    .target Shoni the Shilent
step
    .goto StormwindClassic,63.9,8.2
    .zone Ironforge >> Take the Deeprun Tram to Ironforge

]])

-- For me I probably do Loch before Thanes so people catchup, do thanes with people immediately go to Darkshore.
RXPGuides.RegisterGuide([[
#name 16-18 Loch Modan
#group Mac Custom
#subgroup 10-20
#next 16-18 Hall of Thanes

-- Fly in accept mercenaries -> Chok Sul -> Ironbrand's Excavation
-- Stormpike's Delivery -> Thandol Span q's -> Ogres -> Lodge
-- Buzzards -> Bingles + Boars + Turn in -> Go to Excavation
-- Sooty -> Turn in Town -> Excavation (HS Sentinel Hill)

-- Test ogres (need to be faster than 8 mins in and out for it to be worth)

step
    .goto Loch Modan,34.6,44.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Bluntnose|r
    .target Magistrate Bluntnose
    .accept 255 >> Accept Mercenaries
step
    .goto Loch Modan,37.3,46.5
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 256 >> Accept WANTED: Chok'sul
step
    .goto Loch Modan,37.2,47.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jern Hornhelm|r
    .target Jern Hornhelm
    .accept 436 >> Accept Ironband's Excavation

step
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mountaineer Stormpike|r
    .turnin 353 >> Turn in Stormpike's Delivery
    .target Mountaineer Stormpike
step
    .goto 1432/0,-3263.96,-4737.87
    .target Chief Engineer Hinderweir VII
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Hinderweir VII|r
    .accept 250 >> Accept A Dark Threat Looms
step
    .goto 1432/0,-3539.60,-4731.06
    >>Click the |cRXP_PICK_Suspicious Barrel|r
    .turnin 250 >> Turn in A Dark Threat Looms
    .accept 199 >> Accept A Dark Threat Looms
step
    .goto 1432/0,-3263.96,-4737.87
    .target Chief Engineer Hinderweir VII
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Hinderweir VII|r
    .turnin 199 >> Turn in A Dark Threat Looms
step
    #completewith next
    >>Kill Ogres en route to Chok'sul, try to focus Brutes (Only found in caves)
    .complete 255,1 -- Ogres
    .complete 255,2 -- Brutes
    .complete 255,3 -- Enforcers
step
    >>Kill |cRXP_ENEMY_Chok'sul|r in the back of the cave
    .goto Loch Modan,79.7,14.7
    .complete 256,1 -- Chok'sul's Head

step
    >>Kill |cRXP_ENEMY_Ogres|r, try to finish towards lodge
    .complete 255,1 -- Ogres
    .complete 255,2 -- Brutes
    .complete 255,3 -- Enforcers
step
    #completewith next
    +Try to kite a few far buzzards to quest accept (have 1 person go and share as ...)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .accept 257 >> Accept A Hunter's Boast
    .goto Loch Modan,83.49,65.40
    .target Daryl the Youngling
step
    .goto Loch Modan,81.8,61.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marek Ironheart|r
    .target Marek Ironheart
    .accept 86758 >> Accept Twisting the Knife
step
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16
    >>Kill |cRXP_ENEMY_Mountain Buzzards|r
    >>|cRXP_WARN_You must complete this quest and return to|r |cRXP_FRIENDLY_Daryl the Youngling|r ...
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .goto Loch Modan,83.49,65.40
    .turnin 257 >> Turn in A Hunter's Boast
    .accept 258 >> Accept A Hunter's Challenge
    .target Daryl the Youngling

step
    #completewith next
    >>Kill |cRXP_ENEMY_Daggerfang|r near Bingles
    .complete 86758,1 -- Daggerfang


    step
    .goto Loch Modan,63.7,47.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bingles Blastenheimer|r
    .target Bingles Blastenheimer
    .turnin 2038 >> Turn in Find Bingles
step
    .goto Loch Modan,62.9,51.2
    >>Kill |cRXP_ENEMY_Daggerfang|r near Bingles
    .complete 86758,1 -- Daggerfang
step
    .goto Loch Modan,74.65,49.60,70,0
    .goto Loch Modan,75.80,43.43,70,0
    .goto Loch Modan,71.10,38.98,70,0
    .goto Loch Modan,65.59,41.89,70,0
    .goto Loch Modan,81.66,32.02,70,0
    .goto Loch Modan,72.79,39.86,70,0
    .goto Loch Modan,73.82,51.85,70,0
    .goto Loch Modan,69.45,39.18
    >>Kill |cRXP_ENEMY_Elder Mountain Boars|r
    >>|cRXP_WARN_You must complete this quest and return to|r |cRXP_FRIENDLY_Daryl the Youngling|r ...
    .complete 258,1 -- Elder Mountain Boar slain (5)
    .mob Elder Mountain Boar
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.07,25 >> Travel toward |cRXP_FRIENDLY_Daryl the Youngling|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .goto Loch Modan,83.49,65.40
    .turnin 258 >> Turn in A Hunter's Challenge
    .target Daryl the Youngling

step
    .goto Loch Modan,81.8,61.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marek Ironheart|r
    .target Marek Ironheart
    .turnin 86758 >> Turn in Twisting the Knife
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vyrin Swiftwind|r
    .goto Loch Modan,81.79,64.15
    .accept 271 >> Accept Vyrin's Revenge
    .target Vyrin Swiftwind
step
    >>Talk to |cRXP_FRIENDLY_Ironband|r and |cRXP_FRIENDLY_Magmar|r
    .accept 298 >> Accept Excavation Progress Report
    .goto Loch Modan,65.94,65.62
    .turnin 436 >> Turn in Ironband's Excavation
    .goto Loch Modan,63.89,66.66
    .target Prospector Ironband
    .target Magmar Fellhew
step
    #completewith next
    .goto Loch Modan,37.6,63
    >>Kill |cRXP_ENEMY_Ol' Sooty|r if he's patrolling nearby
    .complete 271,1 -- Ol' Sooty
    .target Ol' Sooty
step
    .goto Loch Modan,37.18,47.13,10,0
    >>Talk to |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_He can be inside or outside the building|r
    .turnin 298 >> Turn in Excavation Progress Report
    .accept 301 >> Accept Report to Ironforge
    .goto Loch Modan,37.23,47.37
    .target Jern Hornhelm
step
    .goto Loch Modan,34.6,44.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Bluntnose|r
    .target Magistrate Bluntnose
    .turnin 255 >> Turn in Mercenaries
    .turnin 256 >> Turn in Chok'sul
step
    .goto Loch Modan,37.6,63
    >>Kill |cRXP_ENEMY_Ol' Sooty|r
    .complete 271,1 -- Ol' Sooty
    .target Ol' Sooty

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .goto Loch Modan,83.49,65.40
    .turnin 271 >> Turn in Vyrin's Revenge
    .target Daryl the Youngling
    .isQuestComplete 271
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .goto Loch Modan,83.49,65.40
    .accept 531 >> Accept Vyrin's Revenge
    .target Daryl the Youngling
    .isQuestTurnedIn 271
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vyrin Swiftwind|r
    .goto Loch Modan,81.73,64.15
    .turnin 531 >> Turn in Vyrin's Revenge
    .target Vyrin Swiftwind
    .isOnQuest 531


]])


RXPGuides.RegisterGuide([[
#name 16-18 Hall of Thanes
#group Mac Custom
#subgroup 10-20
#next 17-20 Darkshore

step
    .goto Ironforge,33.4,47.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Afadra Dunwall|r
    .target Afadra Dunwall
    .accept 96394 >> Accept The Restless Dead
step
    #completewith next
    .goto Ironforge,32.4,41.0,20 >> Carefully drop down to the north
step
    .goto Ironforge,32.2,44.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thom Filch|r
    .target Thom Filch
    .accept 96403 >> Accept Important Heirlooms
step
    .goto Ironforge,27.5,48
    .zone The Hall of Thanes >> Zone into Hall of Thanes
    .zoneskip The Hall of Thanes
step
    #completewith next
    >>Kill |cRXP_ENEMY_Tormented Souls|r and |cRXP_ENEMY_Enraged Apparitions|r
    .complete 96394,1 -- 15x Enraged Apparition
    .complete 96394,2 -- 10x Tormented Soul
step
    #completewith next
    >>|cRXP_WARN_These are hard to see, keep an eye out for small dwarven statues|r
    .complete 96403,1 -- 8x Dwarven Heirloom

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghostly Attendant|r
    .target Ghostly Attendant
    .accept 96395 >> Accept An Ancient Grudge
step
    #completewith next
    >>Kill |cRXP_ENEMY_Tormented Souls|r and |cRXP_ENEMY_Enraged Apparitions|r
    .complete 96394,1 -- 15x Enraged Apparition
    .complete 96394,2 -- 10x Tormented Soul
step
    #completewith next
    >>|cRXP_WARN_These are hard to see, keep an eye out for small dwarven statues|r
    .complete 96403,1 -- 8x Dwarven Heirloom
step
    >>|cRXP_WARN_Careful of ninja pulling him, he patrols the center|r
    >>Kill |cRXP_ENEMY_Faldrim Anvilmar|r, kite him to quest turnin.
    .complete 96395,1 -- Soul to rest
    .unitscan Faldrim Anvilmar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghostly Attendant|r
    .target Ghostly Attendant
    .turnin 96395 >> Turn in An Ancient Grudge --,1 = Stam/AP Cloak ,2 = Str/Agi ...

step
    #completewith next
    >>|cRXP_WARN_These are hard to see, keep an eye out for small dwarven statues|r
    .complete 96403,1 -- 8x Dwarven Heirloom
step
    >>Finish killing |cRXP_ENEMY_Tormented Souls|r and |cRXP_ENEMY_Enraged Apparitions|r
    .complete 96394,1 -- 15x Enraged Apparition
    .complete 96394,2 -- 10x Tormented Soul
step
    #completewith next
    >>|cRXP_WARN_These are hard to see, keep an eye out for small dwarven statues|r
    .complete 96403,1 -- 8x Dwarven Heirloom
step
    >>|cRXP_WARN_Durgen Fears, pull him to doorway to avoid accidental pulls|r
    >>Kill |cRXP_ENEMY_Durgen Dirgehammer|r. Loot him for his head.
    .complete 96393,1 -- Durgen's Head
    .unitscan Durgen Dirgehammer
step
    >>Interact with the tablet on the ground
    .accept 98423 >> Accept Treaty of Understanding

step
    #completewith next
    >>|cRXP_WARN_These are hard to see, keep an eye out for small dwarven statues|r
    .complete 96403,1 -- 8x Dwarven Heirloom
step
    #completewith next
    .zone Ironforge >> Exit the dungeon to Ironforge
    .zoneskip Ironforge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thom Filch|r
    .goto Ironforge,32.2,44.8
    .target Thom Filch
    .turnin 96403 >> Turn in Important Heirlooms -- ,1 = Tome ,2 = Int/Stam Cloth gl...
step
    .goto Ironforge,36.8,50.5,10,0
    .goto Ironforge,33.6,54.0,10,0
    .goto Ironforge,31.0,47.3,10,0
    .goto Ironforge,36.0,48.1,15,0
    .goto Ironforge,33.6,52.6,10,0
    .goto Ironforge,38.8,50.4,15,0
    .goto Ironforge,36.4,52.9,10,0
    .goto Ironforge,33.4,47.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Afadra Dunwall|r
    .target Afadra Dunwall
    .turnin 96394 >> Turn in The Restless Dead -- ,1 = Leather Belt ,2 = Mail Bracer...

step
    .goto Ironforge,42.0,46.8,10,0
    .goto Ironforge,48.0,48.2,10,0
    .goto Ironforge,47.2,59.8,10,0
    .goto Ironforge,46.4,52.0,10,0
    .goto Ironforge,39.1,56.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .target King Magni Bronzebeard
    .turnin 96393 >> Turn in Old Ironforge Incursion -- ,1 = Gun ,2 = Mace ,3 = Wa...
    .turnin 98423 >> Turn in The Treaty of Understanding
step
    .hs >> Hearth to Auberdine

]])


RXPGuides.RegisterGuide([[

#name 17-20 Darkshore
#group Mac Custom
#subgroup 10-20
#next TBD

step 
    .goto Darkshore, 37.3, 44.2
    >>Click the |cFF00FF25Wanted Poster 827|r
    .accept 4740 >> Accept WANTED: Murkdeep!

step
    .goto Darkshore, 37.4, 43.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Accept Cave Mushrooms
    .target Barithras Moonshade

step
    .goto Darkshore, 37.60,43.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sentinel Glynda Nal'Shea|r
    .target Sentinel Glynda Nal'Shea
    .accept 4811 >> Accept The Red Crystal
step
    .goto Darkshore, 39.0, 43.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sentinel Elissa Starbreeze|r
    .target Elissa Starbreeze
    .accept 965 >> Accept The Tower of Althalaxx

step
    #map Darkshore
    .goto Felwood,31.29,24.14
    >> Travel to |cFFDB2EEFThe Red Crystal|r
    .complete 4811,1

]])

