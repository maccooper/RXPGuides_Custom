local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#name 1-7 Shadowglen
#group Mac Custom
#subgroup 01-11
#next 7-11 Westfall

step << !NightElf
    #sticky
    #completewith next
    +You have selected a guide meant for Nigh1t Elves. You should choose the same starter zone that you start in

step
    .goto 1438/1,826.03,10328.97
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .accept 456 >> Accept The Balance of Nature
step << Druid
    #completewith next
    +|cRXP_WARN_Make sure that you have at least 96 copper worth of vendor trash|r, you can count your staff that vendors for 9c
step << !sod/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirania Silvershine|r and |cRXP_FRIENDLY_Melithar Staghelm|r
    #label GoodProtector
    .target +Dirania Silvershine
    .goto 1438/1,713.81,10407.20
    .accept 458 >> Accept The Woodland Protector
	.goto 1438/1,763.45,10389.79
    .target +Melithar Staghelm
step << !Druid
    #sticky
    >>Kill |cRXP_ENEMY_Young Nightsabers|r and |cRXP_ENEMY_Young Thistle Boars|r
    .goto 1438/1,657.75,10385.51,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step << Priest
    .goto 1438/1,779.8482,10450.1295
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water]
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Dellylah

step << Rogue
    .goto Teldrassil, 59.4, 38.7
    .target Terunne Bearshaper
    .train 8613 >>Train Skinning
    .collect 7005,1 >>Buy a Skinning Knife
    .collect 277114 >> Buy a Skinning Satchel

    .target Frahun Shadewhisper
    .train 1784 >>Train Stealth



step << Warrior
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vendor trash|r
    .target Keina
step << Warrior
	.goto 1438/1,778.07,10526.62
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alyissia|r
    .trainer >> Train |T132333:0|t[Battle Shout]
step << Hunter/Warrior
    .goto 1438/1,769.77,10673.98
    .xp 4-610 >> Grind until you are 610xp away from level 4 (790/1400)
step << Rogue
    .goto Teldrassil,57.8,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 456 >> Turn in The Balance of Nature
    .target Conservator Ilthalaine
    .accept 457 >> Accept The Balance of Nature
    .accept 3118 >> Encrypted Sigil

step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r
    .target Tarindrella
    .accept 459 >> Accept The Woodland Protector
    .accept 97977 >> Accept Nature's Call

step << Rogue
    .accept 4495 >> Accept A Good Friend


step << Rogue/Hunter/Druid/Warrior/Priest
    #sticky
    .goto 1438/1,769.77,10673.98
    >>Kill |cRXP_ENEMY_Mangy Nightsabers|r and |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar

step << Hunter/Warrior
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Turn in A Good Friend
    .target Iverron
    .accept 3519 >> Accept A Friend in Need
step << Hunter/Warrior
    #completewith next
    .hs >> Hearth to Shadowglen
step << Hunter/Warrior
    .goto 1438/1,866.51,10300.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Turn in The Woodland Protector
    .target Tarindrella
    .accept 459 >> Accept The Woodland Protector
    .accept 97977 >>Accept Nature's Call
    .accept 4495 >> Accept A Good Friend
step << Druid
	.goto 1438/1,820.68,10487.33--c:Teldrassil,58.8,39.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khardan|r
    >>|cRXP_WARN_Vendor all your gear and your staff|r! Buy a |T135139:0|t[|cRXP_LOOT_Short Staff|r] from him
	.collect 2132 --Short Staff (1)
	.use 2132 >> equip the Short Staff
	.target Khardan Proudblade
step << !Priest !Rogue
    #requires balance1
	.goto 1438/1,826.03,10328.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 456,1 >> Turn in The Balance of Nature << Hunter
    .turnin 456 >> Turn in The Balance of Nature << !Hunter
    .target Conservator Ilthalaine
    .accept 457 >> Accept The Balance of Nature
	.accept 3116 >> Accept Simple Sigil << Warrior
	.accept 3117 >> Accept Etched Sigil << Hunter
--	.accept 3118 >> Accept Encrypted Sigil << Rogue
	.accept 3119 >> Accept Hallowed Sigil << Priest
	.accept 3120 >> Accept Verdant Sigil << Druid
step << !Hunter !Druid !Warrior
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Turn in A Good Friend
    .target Iverron
    .accept 3519 >> Accept A Friend in Need
step << !Hunter !Druid !Warrior
    #completewith next
    .hs >> Hearth to Shadowglen
step << !Hunter !Warrior
    .goto 1438/1,866.51,10300.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r
    --@TODO add herbalism note for druid for earthroot
    .turnin 458 >> Turn in The Woodland Protector
    .target Tarindrella
    .accept 459 >> Accept The Woodland Protector
    .accept 97977 >>Accept Nature's Call
step << Priest/Rogue
    #requires balance1
	.goto 1438/1,826.03,10328.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 456 >> Turn in The Balance of Nature
    .target Conservator Ilthalaine
	.accept 3119 >> Accept Hallowed Sigil << Priest
step << Druid
    #completewith next
    +|cRXP_WARN_Cast|r |T136006:0|t[|cRXP_LOOT_Wrath|r] |cRXP_WARN_until out of mana then switch back to|r |T135158:0|t[|cRXP_LOOT_Melee|r] |cRXP_WARN_until you are back to full and repeat|r
step << Druid
    .goto 1438/1,964.300,10272.800,10,0
    .goto 1438/1,1030.200,10339.800
    >>Kill |cRXP_ENEMY_Grell|r and |cRXP_ENEMY_Grellkin|r. Loot them for their |cRXP_LOOT_Fel Moss|r
    >>Loot |T134460:0|t[|cRXP_LOOT_Gnarlpine Totems|r] from the Grell Camps
    .complete 459,1 --Collect Fel Moss (x8)
    .complete 97977,1 --Gnarlpine Totem (x4)
    .mob Grell
    .mob Grellkin
step << Druid
    #completewith next
    >>Kill |cRXP_ENEMY_Thistle Boars|r on the way to Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << Druid
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Turn in A Good Friend
    .target Iverron
    .accept 3519 >> Accept A Friend in Need
step << Druid
    #completewith next
    .hs >> Hearth to Shadowglen
step << Druid
    .goto 1438/1,871.60,10300.67
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r
    >>TIP: |cRXP_WARN_Take the leggings as the reward and keep them. You will use them to engrave a rune on later on|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459,1 >> Turn in The Woodland Protector
    .turnin 97977 >>Turn in Nature's Call
step
    .deathskip >>Die and turn in
step
    #requires vial1
    .goto 1438/1,826.03,10328.97
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 457,2 >> Turn in The Balance of Nature
    .isQuestComplete 457

step << Rogue
    .goto Teldrassil, 58.1, 41.5
    .target Fanorran Stilloak
    .train 2575 >>Train Mining
    .collect 2901,1 >>Buy a Mining Pick

step
    .goto 1438/1,871.24,10417.65
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .accept 916 >> Accept Webwood Venom

step
    #label IchorVenomSac
    .goto 1438/1,922.52,10755.43
    >>Kill |cRXP_ENEMY_Webwood Spiders|r. Loot them for their |cRXP_LOOT_Venom Sacs|r
    --.complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider

step
    .deathskip >>Die and turn in

step
    .goto 1438/1,871.24,10417.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .turnin 916 >> Turn in Webwood Venom
    .target Gilshalan Windwalker
    .accept 917 >> Accept Webwood Egg
step
    .goto 1438/1,912.33,10935.30
    >>Kill |cRXP_ENEMY_Githyiss the Vile|r loot it for it's |T134298:0|t[|cRXP_LOOT_Fang|r]
    >>Loot a |cRXP_LOOT_Webwood Egg|r on the ground at the back of the Cave
    .collect 277190,1 --Fang of Githyiss (x1)
    .complete 917,1 --Collect Webwood Egg (x1)
    .mob Githyiss the Vile

step
    .deathskip >>Die and turn in

step
	.goto 1438/1,871.24,10417.65
    >>Use the |T134298:0|t[|cRXP_LOOT_Fang of Githyiss|r] to accept the quest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .accept 97236 >> Accept Fang of Githyiss
    .turnin 97236 >> Turn in Fang of Githyiss
    .turnin 917 >> Turn in Webwood Egg
    .target Gilshalan Windwalker
    .accept 920 >> Accept Tenaron's Summons
    .use 277190

step
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,807.34,10492.48
    >>Ascend the Aldrassil Tree
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 920 >> Turn in Tenaron's Summons
    .target Tenaron Stormgrip
    .accept 921 >> Accept Crown of the Earth

step
    #sticky
    #label vial1
    .goto 1438/1,764.68,10711.31
	.use 5185 >> |cRXP_WARN_Use the|r |T134776:0|t[Crystal Phial] |cRXP_WARN_at the Moonwell|r
    .complete 921,1 --Collect Filled Crystal Phial (x1)

step
    .deathskip >>Die and resurrect in town (if possible)

step
    #requires vial1
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,807.34,10492.48
    >>Ascend the Aldrassil Tree
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 921 >> Turn in Crown of the Earth
    .target Tenaron Stormgrip
    .accept 928 >> Accept Crown of the Earth

step
    .goto 1438/1,713.81,10407.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3519 >> Turn in A Friend in Need
    .target Dirania Silvershine


    
step << Warrior
    .xp 4-40
step << Hunter/Druid/Warrior
    #completewith htraining
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keina|r
    >>|cRXP_WARN_Make sure that you have 1 silver leftover after leaving the vendor to be able to afford|r |T132204:0|t[|cRXP_FRIENDLY_Serpent Sting|r] << Hunter
	.vendor >> |cRXP_BUY_Buy 2 stacks of|r |T132382:0|t[Rough Arrows] << Hunter
    .vendor >> |cRXP_BUY_Vendor your trash|r
    .target Keina
step << Warrior
	.goto 1438/1,778.07,10526.62
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alyissia|r
	.turnin 3116 >> Turn in Simple Sigil
    .trainer >> Train your class spells
step << Priest
    .goto 1438/1,779.8482,10450.1295
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Buy up to 25|r |T132794:0|t[Refreshing Spring Water]
    .collect 159,25 --Collect Refreshing Spring Water (x25)
    .target Dellylah
step
    #optional
    .xp 3

step << Hunter/Druid
    .xp 4-40
step << Druid
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,829.54,10464.01
    >>Ascend the Aldrassil Tree
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardant Strongoak|r
	.turnin 3120 >> Turn in Verdant Sigil
	.train 8921 >>Train |T136096:0|t[Moonfire]
step << Hunter
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,827.86,10458.51
    >>Ascend the Aldrassil Tree
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 3117 >> Turn in Etched Sigil
    .train 1978 >>Train Serpent Sting
    .target Ayanna Everstride
step << Druid
    #completewith IchorVenomSac
    +|cRXP_WARN_Stop casting |T136006:0|t[|cRXP_LOOT_Wrath|r] altogether!|r Only use |T135158:0|t[|cRXP_LOOT_Melee|r] and |T136096:0|t[|cRXP_LOOT_Moonfire|r] from now on!
    >>Try to only Moonfire right after Meleeing |cRXP_WARN_to not reset your swing timer!|r



step
    #completewith next
    >>Kill |cRXP_ENEMY_Thistle Boars|r on the way to the Grells
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar

step << Druid
    .goto 1438/1,1014.17,10348.18
    >>Kill |cRXP_ENEMY_Grell|r and |cRXP_ENEMY_Grellkin|r. Loot them for their |cRXP_LOOT_Mushrooms|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .mob Grell
    .mob Grellkin
step
    .goto 1438/1,871.60,10300.67
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r
    >>TIP: |cRXP_WARN_Take the leggings as the reward and keep them. You will use them to engrave a rune on later on|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459 >> Turn in The Woodland Protector
    .turnin 97977 >>Turn in Nature's Call
step
    #completewith next
    >>Kill |cRXP_ENEMY_Thistle Boars|r on the way to Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar

step << Priest
    .goto 1438/1,779.8482,10450.1295
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Buy up to 25|r |T132794:0|t[Refreshing Spring Water]
    .collect 159,25 --Collect Refreshing Spring Water (x25)
    .target Dellylah
step << !Priest
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vendor trash|r << !Hunter
	.vendor >> |cRXP_BUY_Buy 3 or 4 stacks of|r |T132382:0|t[Rough Arrows] << Hunter
    .target Keina

step << Hunter/Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135641:0|t[Thistlewood Dagger]
    .use 5392
    .itemcount 5392,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.05
step
    #completewith next
    >>Kill |cRXP_ENEMY_Thistle Boars|r on the way to Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
    .goto 1438/1,1034.89,10711.58
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iverron|r
    >>TIP: |cRXP_WARN_Take the pants as reward from him. You will use them to engrave a rune on later|r << Priest sod
    .turnin 3522 >> Turn in Iverron's Antidote
step
    #completewith next
    .goto 1438/1,926.08,10773.42,25 >> Enter the Shadowthread Cave

step
	#softcore
	#completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step << skip --logout skip
	#hardcore
	#completewith next
	+Logout skip on the ledge behind the eggs. Move your character until it looks like they're floating, then log out, and back in.
	>>If you fall down, just run out the cave normally to the quest turn in
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >> CLICK HERE for reference



step
    #requires vial1
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer


step
    #requires vial1
    .goto 1438/1,826.03,10328.97
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 457,2 >> Turn in The Balance of Nature

step
    .goto 1438/1,805.500,10491.800
    >>Click on the [|cRXP_PICK_Book|r] to the left of |cRXP_FRIENDLY_Tenaron|r
    .accept 96630 >>Accept The Adventurer

step
    .goto Teldrassil, 61.2, 47.6
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >> Accept Dolanaar Delivery

-- End of Starter Zone

-- Do Zenn's Bidding?

step
    #completewith next
    +Adventurer / Great Outdoors

step
   .goto 1438/1,879.700,9907.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyreena Duskblade|r
    .turnin 96630 >> Turn in The Adventurer
    .accept 96606 >> Accept The Great Outdoors
    .target Lyreena Duskblade

step
    .aura 1229741
    >>Wait for |cRXP_FRIENDLY_Camp Benefits|r
    .turnin 96606 >> Turn in The Great Outdoors
    .accept 96634 >> Accept Cooking 101
    .accept 97948 >> Accept Mining 101
    .accept 97949 >> Accept Skinning 101

step
    .goto 1438/1,965.59,9887.58
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r
    .accept 475 >> Accept A Troubling Breeze

step
    .goto Teldrasil, 55.4,56.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Train |T135966:0|t[First Aid]
    .target Byancie
step
    .goto 1438/1,984.94,9898.58
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r atop the Tree
    .accept 932 >> Accept Twisted Hatred
    .accept 2438 >> Accept The Emerald Dreamcatcher

step
    .goto 1438/1,963.000,9811.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Kyra Starsong::2081|r
    .target Sentinel Kyra Starsong::2081
    .accept 99046 >>Accept The Lost Runner

step
    .goto 1438/1,982.65,9802.19
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    .turnin 2159,2 >> Turn in Dolanaar Delivery << Hunter
    .turnin 2159 >> Turn in Dolanaar Delivery << !Hunter
    .vendor >>|cRXP_BUY_Buy 10 |T132815:0|t|cRXP_LOOT_Ice Cold Milk|r or as much as you can afford << Priest
    .home >> Set your Hearthstone to Dolanaar

step
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 928 >> Turn in Crown of the Earth
    .target Corithras Moonrage
    .accept 929 >> Accept Crown of the Earth

step
    .goto Teldrassil, 57.0, 61.3
    .target Zarrin
    .train 2550 >>Train Cooking
    .turnin 96634 >> Turn in Cooking 101


step
    #label Starbreeze
    #completewith next
    .goto Teldrassil, 62.7,60 >> Travel to Starbreeze Village

step
    #xprate <1.99
    .goto 1438/1,587.49,9859.480
    >>|cRXP_WARN_Use the|r |T134721:0|t[Jade Phial] |cRXP_WARN_at the Starbreeze Village Moonwell|r
    .complete 929,1 --Collect Filled Jade Phial (x1)

step
    #label zenn
    .goto 1438/1,440.85,9845.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaerolas Talvethren|r up stairs
    .turnin 475 >> Turn in A Troubling Breeze
    .target Gaerolas Talvethren
    .accept 476 >> Accept Gnarlpine Corruption
step
    .goto 1438/1,351.23,9806.54
    >>Open |cRXP_PICK_Tallonkai's Dresser|r. Loot it for the |cRXP_LOOT_Emerald Dreamcatcher|r
    .disablecheckbox
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)

step
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer


step
    #label GnarlpineCorruption
    .goto 1438/1,965.59,9887.58
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r
    .turnin 476 >> Turn in Gnarlpine Corruption
    .accept 483 >> The Relics of Wakening

step
	.goto 1438/1,1655.21,9555.06
    .use 5621 >>|cRXP_WARN_Use the|r |T134765:0|t[Tourmaline Phial] |cRXP_WARN_at the Pools of Arlithrien moonwell|r
	.complete 933,1

step
    #softcore
    .deathskip >> Die at or west of lakes nearby
    .target Spirit Healer

step
    #completewith next
    .goto 1457/1,2508.68,9605.98--c:Darnassus,40.6,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Dalia Sunblade|r
    .accept 98067 >>Accept Eyes of the Sentinels
    .target Sentinel Dalia Sunblade

step
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r upstairs
    .accept 2518 >> Accept Tears of the Moon

step
    #completewith next
    .hs >> Hearth to Dolanaar

step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Train your class spells
    .target Jannok Breezesong

-- Tough as a solo level 6 Rogue
-- Need to find a solution. Possible alternative route then come back post 6 whenever the pre-req is completed by amphy team?

step
    #sticky
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    >>|cRXP_WARN_Req: you only need ONE of Lord Melenas or Lady Sathrah|r

step
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Travel to Fel Rock

step
    #label Melenas
    .goto Teldrassil,51.2,50.6
    >>Kill |cRXP_ENEMY_Lord Melenas|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Lord Melenas|r may be located in many different spawn locations throughout Fel Rock
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas

step
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer


step
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 933 >> Turn in Crown of the Earth
    .target Corithras Moonrage
    .accept 7383 >> Accept Crown of the Earth

step
    .goto 1438/1,984.94,9898.58
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r atop the Tree
    .turnin 2438 >> Turn in The Emerald Dreamcatcher
    .accept 2459 >> Accept Ferocitas the Dream Eater


step
    .turnin 932 >> Turn in Twisted Hatred

    

step
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_Moon Priestess Amara|r |cRXP_WARN_patrols the road west of Dolanaar. She can also be busy fighting a furlbog ambush in which case you will have to wait for her to finish|r
    .accept 487 >> Accept The Road to Darnassus
    .target Moon Priestess Amara
 
step
    #label Ambushers
    .goto 1438/1,1441.87,10032.56
    >>Kill |cRXP_ENEMY_Gnarlpine Ambushers|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher

step
    .goto Teldrassil, 42.1,50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Radnaal Maneweaver::6287|r
    .target Radnaal Maneweaver
    .turnin 97949 >> Turn in Camping 101:Skinning
step
    .goto 1438/1,1899.700,10582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Eralya Leafshadow::275683|r
    .target Sentinel Eralya Leafshadow::275683
    .turnin 99046 >>Turn in The Lost Runner
    .accept 99047 >>Accept Not Dead Yet

step
    .goto 1438/1,1864.47,10667.19
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .accept 937 >> Accept The Enchanted Glade
step
    .goto 1438/1,1857.86,10676.36
    .use 18152 >>|cRXP_WARN_Use the|r |T134798:0|t[Amethyst Phial] |cRXP_WARN_at The Oracle Glade moonwell|r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)

step
    #label Spinnerets
    #loop
    .isQuestNotComplete MELENAS_QID  -- skip if Melenas branch done
    .goto 1438/1,1828.600,10964.800
    >>Kill |cRXP_ENEMY_Lady Sathrah|r. Loot her for her |cRXP_LOOT_Spinnerets|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah

step
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer

step
    .goto 1457/1,2009.100,9986.601
    .goto 1457/1,2240.100,10121.000
    .goto 1457/1,2579.300,10129.000
    .goto 1457/1,2499.900,9932.601
    >>Use the |T133298:0|t[|cRXP_LOOT_Lunar Pendant|r] at the City Gate, Inn, Cenarion Hold entrance and Bank
    >>|cRXP_WARN_If another player's owl is out, wait for it to despawn before using the pendant|r << !Warrior
    .complete 98067,4 --City Gate
    .complete 98067,3 --Craftsman's Terrace Inn
    .complete 98067,1 --Cenarion Hold depths entrance
    .complete 98067,2 --Darnassus Bank
    .use 279378 --Lunar Pendant

step
    #completewith next
    .goto 1457/1,2636.53,9956.80
    .zone Teldrassil >> Travel through the purple portal to Rut'theran Village
    .zoneskip Darkshore
    .subzoneskip 702

step
    >>Buy 3x Nightcrawlers and 1x Bauble
    .collect 6530,3 --Nightcrawlers (x3)
    .collect 6529,1 --Shiny Bauble (x1)

step   
    .goto 1457/1,X,Y,15,0
    .zone Stormwind City >> Take the boat to Stormwind (end of the dock)

]])


RXPGuides.RegisterGuide([[
#name 7-11 Westfall
#group Mac Custom
#subgroup 01-11
#next 11-15 Darkshore

step
    .goto 1457/1,X,Y
    >>Talk to |cRXP_FRIENDLY_Gilbert Gray|r
    .accept QID >>Accept Fishin' Time
    .turnin QID >>Turn in Fishin' Time
    .target Gilbert Gray
step
    .goto StormwindClassic,57.1,57.7
    >>Talk to |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >>Train |T135328:0|t[One-Handed Swords]
    .target Woo Ping
step
    .goto Stormwind,71.2,72.5
    >>Talk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >>Get the Stormwind City flight path
    .target Dungar Longdrink
step
    .goto Elwynn Forest,42.1,65.9
    >>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .accept 62 >>Accept The Fargodeep Mine
    .target Marshal Dughan

step
    .goto Elwynn Forest,42.1,67.3
    >>Talk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 40 >>Accept A Fishy Peril
    .target Remy "Two Times"

step
    .goto Elwynn Forest,43.3,65.7
    >>Talk to |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >>Accept Kobold Candles
    .target William Pestle

step
    .goto Elwynn Forest,34.7,84.5
    >>Talk to |cRXP_FRIENDLY_Ma Stonefield|r and |cRXP_FRIENDLY_Auntie Bernice Stonefield|r
    .accept 85 >>Accept Lost Necklace
    .target Ma Stonefield
    .target "Auntie" Bernice Stonefield

step
    .goto Elwynn Forest,34.5,84.3
    >>Talk to |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 88 >>Accept Princess Must Die!
    .target Ma Stonefield

step
    .goto Elwynn Forest,43.1,85.7
    >>Talk to |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >>Turn in Lost Necklace
    .accept 86 >>Accept Pie for Billy
    .target Billy Maclure

step
    .goto Elwynn Forest,43.1,89.6
    >>Talk to |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >>Accept Young Lovers
    .target Maybell Maclure

step
    .goto Elwynn Forest, 29.9,86.1
    >>Talk to |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .turnin 106 >> Turn in Young Lover
    .accept 111 >> Accept Speak with Gramma
    .target Tommy Joe Stonefield

step
    .goto Elwynn Forest,34.7,84.5
    >>Talk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 86 >>Turn in Pie for Billy
    .accept 84 >>Accept Back to Billy
    .target "Auntie" Bernice Stonefield

step
    .goto Elwynn Forest,34.9,84.2
    >>Talk to |cRXP_FRIENDLY_Gramma Stonefield|r
    .turnin 111 >>Turn in Speak with Gramma
    .accept 107 >>Accept Note to William
    .target Gramma Stonefield

step
    .goto Elwynn Forest,43.1,85.7
    >>Talk to |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >>Turn in Back to Billy
    .accept 87 >>Accept Goldtooth
    .target Billy Maclure

step
    #completewith next
    .goto Elwynn Forest,38.9,82.0
    >>Explore the |cRXP_PICK_Fargodeep Mine|r
    .complete 62,1 --Scout through the Fargodeep Mine

step
    .goto Elwynn Forest,41.6,78.8
    >>Kill |cRXP_ENEMY_Goldtooth|r. Loot him for |cRXP_LOOT_Bernice's Necklace|r
    >>|cRXP_WARN_Evade mobs before engaging. Use the rock|r
    .complete 87,1 --Collect Bernice's Necklace (x1)
    .mob Goldtooth

step
    .deathskip >>Die and turn in

step << Rogue
    .goto Elwynn Forest,43.9,65.9
    >>Talk to |cRXP_FRIENDLY_Keryn Sylvius|r
    .trainer >>Train 8
    .target Keryn Sylvius

step
    .goto Elwynn Forest,43.3,65.7
    >>Talk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 107 >>Turn in Note to William
    .accept 112 >>Accept Collecting Kelp
    .accpet 61 >> Shipment to Stormwind
    .target William Pestle

step
    .goto Elwynn Forest,42.1,65.9
    >>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 40 >>Turn in A Fishy Peril
    .turnin 62 >>Turn in The Fargodeep Mine
    .target Marshal Dughan
    .accept 76 >> The Jasperlode Mine
    .accept 35 >> Further Concerns

step
    .goto Elwynn Forest,42.1,67.3
    >>Talk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 47 >>Accept Gold Dust Exchange
    .target Remy "Two Times"

step
    #completewith next
    #sticky
    >>Kill |cRXP_ENEMY_Murlocs|r and |cRXP_ENEMY_Murloc Streamrunners|r. Loot them for their |cRXP_LOOT_Crystal Kelp Fronds|r
    >>|cRXP_WARN_Skip if contested, only kill them on the way|r
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
    .mob Murloc
    .mob Murloc Streamrunner

step
    #completewith next
    .goto Elwynn Forest,61.0,53.0,15 >> Enter the Jasperlode Mine

step
    .goto Elwynn Forest,60.5,50.0
    >>Follow the path through the middle to explore the |cRXP_PICK_Jasperlode Mine|r
    >>|cRXP_WARN_Exit the mine as soon as the objective completes|r
    .complete 76,1 --Scout through the Jasperlode Mine

step
    .goto Elwynn Forest,73.9,72.2
    >>Talk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 35 >>Turn in Further Concerns
    .accept 37 >>Accept Find the Lost Guards
    .accept 52 >>Accept Protect the Frontier
    .target Guard Thomas


step
    .goto Elwynn Forest,72.7,60.3
    >>Click the |cRXP_PICK_Half-eaten Body|r on the ground
    .turnin 37 >>Turn in Find the Lost Guards
    .accept 45 >>Accept Discover Rolf's Fate

step
    .goto Elwynn Forest,76.5,72.0
    >>Talk to |cRXP_FRIENDLY_Ormin Pelford|r
    .accept 91733 >>Accept Downstream
    .target Ormin Pelford

step
    .goto Elwynn Forest,X,Y
    >>Loot the |cRXP_PICK_Waterlogged Axe|r near the |cRXP_PICK_Murloc Hut|r
    .complete QID,1 --Collect Waterlogged Axe (x1)

step
    .goto Elwynn Forest,79.8,55.5
    >>Click |cRXP_PICK_Rolf's Corpse|r on the ground
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas

step
    .goto Elwynn Forest, 74.2, 72.5
    .turnin 71 >> Turn in Report to Thomas
    .accept 52 >> Accept Protect the Frontier

step
    #sticky
    .goto Elwynn Forest,79.0,66.0
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Prioritize killing any Young Forest Bears you see|r
    .complete 52,1 --Prowler slain (x8)
    .complete 52,2 --Young Forest Bear slain (x5)
    .mob Prowler
    .mob Young Forest Bear

step
    >>Loot the |cRXP_PICK_Waterlogged Axe|r, |cRXP_PICK_Saw|r and |cRXP_PICK_Toolbox|r near the |cRXP_PICK_Murloc Hut|r
    .goto Elwynn Forest,74.3,76.4
    .complete 247813 --Collect Saw (x1)
    .goto Elwynn Forest,76.7,82.4
    .complete 247817 --Collect Waterlogged Axe (x1)
    .goto Elwynn Forest,77.4,86.9
    .complete 247818 --Collect Toolbox (x1)

step
    .goto Elwynn Forest,76.4,86.4
    >>Kill |cRXP_ENEMY_Croaky|r. Loot her for her |cRXP_LOOT_Head|r
    .use 247826 >>Use |cRXP_LOOT_Croaky's Head|r to start the quest
    .accept 91740 >>Accept Croaky's Head
    .target Croaky

step
    .goto Elwynn Forest,69.5,79.0
    >>Kill |cRXP_ENEMY_Princess|r. Loot her for her |cRXP_LOOT_Brass Collar|r
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess

step
    .goto Elwynn Forest,73.9,72.2
    >>Talk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
    .target Guard Thomas

step
    .goto Elwynn Forest,76.5,72.0
    >>Talk to |cRXP_FRIENDLY_Ormin Pelford|r
    .turnin 91733 >>Turn in Downstream
    .target Ormin Pelford

step
    #completewith next
    >> Scan for Elmpaw nearby (rare spawn quest)|r

step
    .goto Elwynn Forest,85.6,79.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merell Ross|r

    .turnin 91740 >>Turn in Croaky's Head
    .target Merell Ross

step
    #completewith next
    .goto Elwynn Forest,90.0,78.0
    >>Kill |cRXP_ENEMY_Defias Bandits|r near the Redridge border. Loot them for the |cRXP_LOOT_Westfall Deed|r
    .collect 1972,1,184 --Westfall Deed (x1)
    .use 1972
    .accept 184 >>Accept Furlbrow's Deed
    .mob Defias Bandit

step
    #softcore
    .deathskip >> Deathskip to Lakeshire
    .target Spirit Healer

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Lakeridge Highway >> Fly to Stormwind

step
    #completewith next
    .goto Elwynn Forest,43.3,65.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .isQuestComplete 112
    .turnin 112 >>Turn in Collecting Kelp
    .accept 114 >>Accept The Escape
    .target William Pestle

step
    .goto Elwynn Forest,42.1,65.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >>Turn in Deliver Thomas' Report
    .turnin 76 >>Turn in The Jasperlode Mine
    .accept 239 >>Accept Westbrook Garrison Needs Help!
    .accept 109 >>Accept Report to Gryan Stoutmantle
    .target Marshal Dughan

step
    .goto Elwynn Forest,41.7,65.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r
    .accept 1097 >>Accept Elmore's Task
    .target Smith Argus
step
    .goto Elwynn Forest,42.8,66.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r and |cRXP_FRIENDLY_Remy "Two Times"|r
    .turnin 60 >>Turn in Kobold Candles
    .turnin 47 >>Turn in Gold Dust Exchange
    .target William Pestle
    .target Remy "Two Times"


step << Rogue
    .goto Elwynn Forest,43.9,65.9
    .xp <10,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
    .trainer >>Train your level 10 class spells
    .accept 2205 >>Accept Seek out SI: 7
    .target Keryn Sylvius

step
    #sticky
    >>Kill |cRXP_ENEMY_Defias Bandits|r near Redridge. Loot them for the |cRXP_LOOT_Westfall Deed|r
    .collect 1972,1,184 --Westfall Deed (x1)
    .use 1972
    .accept 184 >>Accept Furlbrow's Deed
    .mob Defias Bandit

step
    .goto Elwynn Forest,43.1,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >>Turn in The Escape
    .target Maybell Maclure

step
    .goto Elwynn Forest,34.5,84.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88 >>Turn in Princess Must Die!
    .target Ma Stonefield

step
    .goto Elwynn Forest,34.7,84.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 87 >>Turn in Goldtooth
    .target "Auntie" Bernice Stonefield

step
    .goto Elwynn Forest,24.2,74.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >>Turn in Westbrook Garrison Needs Help!
    .target Deputy Rainer


-- Hogger

step
#sticky
    #completewith next
    .goto Elwynn Forest,24.5,74.6
    .accept 176 >> Accept Wanted: Hogger

step
    .goto Elwynn Forest,26.0,93.0
    >>Kill |cRXP_ENEMY_Hogger|r. Loot him for his |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Try to find and kite to poster|r
    .complete 176,1 --Collect Huge Gnoll Claw (x1)
    .unitscan Hogger
    
step
    .goto Westfall,59.9,19.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 64 >>Accept The Forgotten Heirloom
    .accept 151 >>Accept Poor Old Blanchy
    .accept 36 >>Accept Westfall Stew
    .target Farmer Furlbrow
    .target Verna Furlbrow

step
    .goto Westfall,56.0,31.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .accept 9 >>Accept The Killing Fields
    .target Farmer Saldean

step
    .goto Westfall, 56.3, 30.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .turnin 36 >> Westfall Stetw

step
    .goto Westfall,56.3,47.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r and |cRXP_FRIENDLY_Captain Danuvin|r
    .turnin 109 >>Turn in Report to Gryan Stoutmantle
    .accept 12 >>Accept The People's Militia
    .accept 102 >>Accept Patrolling Westfall
    .target Gryan Stoutmantle
    .target Captain Danuvin

step
    .goto Westfall,56.6,52.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Fly to Stormwind
    .target Thor

step
    .goto StormwindClassic,56.2,64.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61 >>Turn in Shipment to Stormwind
    .target Morgan Pestle

step << Warrior
    .goto StormwindClassic,77.0,52.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harry Burlguard|r
    .accept 1640 >>Accept Bartleby the Drunk
    .target Harry Burlguard

step << Rogue
    .goto StormwindClassic,78.5,70.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r in SI:7
    .turnin 2205 >>Turn in Seek out SI: 7
    .accept 2206 >> Snatch and Grab
    .target Master Mathias Shaw

step
    .hs >>Hearth to Dolanaar

step
    .goto Teldrassil,56.2,61.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 7383 >>Turn in Crown of the Earth
    .accept 935 >>Accept Crown of the Earth
    .target Corithras Moonrage   

step
    #label Melenas
    .goto Teldrassil,51.2,50.6
    >>Kill |cRXP_ENEMY_Lord Melenas|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Lord Melenas|r may be located in many different spawn locations throughout Fel Rock
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas


step
    .goto Teldrassil,55.6,59.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Kyra Starsong|r
    .turnin 487 >>Turn in The Road to Darnassus
    .target Sentinel Kyra Starsong

step
    .goto Teldrassil,55.5,56.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r
    .turnin 932 >>Turn in Twisted Hatred
    .target Tallonkai Swiftroot

step
    .goto Teldrassil,70.9,44.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >>Accept Nessa Shadowsong
    .target Mydrannul

step
    .goto Darnassus,34.8,9.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
    .turnin 935 >>Turn in Crown of the Earth
    .target Arch Druid Fandral Staghelm
    
step
    .goto Teldrassil,56.2,92.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6344 >>Turn in Nessa Shadowsong
    .accept 6341 >>Accept The Bounty of Teldrassil
    .target Nessa Shadowsong

step << NightElf
    .goto 1438/1,842.800,8641.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus::3838|r
    .target Vesprystus::3838
    .turnin 6341 >>Turn in The Bounty of Teldrassil
    .accept 6342 >>Accept Flight to Auberdine
step << Druid
    #completewith next
    .cast 18960 >> Cast Teleport: Moonglade
    >>|cRXP_WARN_It will be in your spellbook|r
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r up stairs
    .turnin 5921 >> Turn in Moonglade
    .target Dendrite Starblaze
    .accept 5929 >> Accept Great Bear Spirit
step << Druid
    .goto Moonglade,45.12,26.78,15,0
    .goto Moonglade,39.17,27.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Great Bear Spirit|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear
    .skipgossip
    .target Great Bear Spirit
step << Druid
    #completewith next
    .cast 18960 >> Cast Teleport: Moonglade
    >>|cRXP_WARN_This will make you return faster|r
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r up stairs
    .turnin 5929 >> Turn in Great Bear Spirit
    .target Dendrite Starblaze
    .accept 5931 >> Accept Back to Darnassus

step << NightElf !Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus::3838|r
    .target Vesprystus::3838
    .goto 1438/1,842.800,8641.300
    .fly Auberdine >>Fly to Auberdine



]])


