local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[

#name 20-30 Duskwood
#group Mac Custom
#subgroup 20-30
#next 30-60 Beyond

-- Arrival in Ironforge
-- Technically it doesnt' need to be Ironforge it could be anywhere we batch hearthed from, but most likely we should do Hall of thanes then insta leave the continent to Darkshore
--
-- Redridge Part 2

step
    .goto Ironforge,55.5,47.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Redridge >> Fly to Redridge Mountains
    .target Gryth Thurden
step
    --TODO: Guard Howe coords
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r
    .accept 128 >> Accept Blackrock Bounty
    .target Guard Howe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Verner Osgood|r
    .target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Turn in Return to Verner
    .accept 124 >> Accept A Baying of Gnolls
    .accept 122 >> Accept Underbelly Scales
step
    .goto Redridge Mountains,29.9,44.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Magistrate Solomon|r
    .turnin 121 >> Turn in Messenger to Stormwind
    .accept 143 >> Accept Messenger to Westfall
    .target Magistrate Solomon
step
    .goto Redridge Mountains,16.8,46.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Martie Jainrose|r
    .turnin 130 >> Turn in Visit the Herbalist
    .accept 131 >> Accept Delivering Daffodils
    .accept 34 >> Accept An Unwelcome Guest
    .target Martie Jainrose
step
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Darcy|r
    >>|cFF00FF25Darcy|r |cFFFCDC00walks around inside the Inn|r
    .turnin 131 >> Turn in Delivering Daffodils
    .target Darcy
step
    .goto Redridge Mountains,27.0,44.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Innkeeper Brianna|r
    .home >> Set your Hearthstone to Lakeshire
    .target Innkeeper Brianna
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
    #completewith next
    .zone Duskwood >> Run to Duskwood

step
    --TODO: Elaine Carevin coords
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Carevin|r
    .accept 163 >> Accept Raven Hill
    .accept 165 >> Accept The Hermit
    .accept 164 >> Accept Deliveries to Sven
    .target Elaine Carevin

step
    --TODO: Herbie coords
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herbie|r
    >>|cRXP_BUY_Buy a|r |cRXP_LOOT_Bronze Tube|r |cRXP_WARN_if he has one in stock (limited supply). Skip this step if not|r
    .collect 4371,1 --Bronze Tube (1)
    .target Herbie

step
    .goto Duskwood,77.5,44.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .fly Westfall >> Fly to Westfall
    .target Felicia Maline
    .zoneskip Westfall

step
    .goto Duskwood,7.8,34.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 164 >> Turn in Deliveries to Sven
    .accept 95 >> Accept Sven's Revenge
    .target Sven Yorgen

step
    #completewith next
    >>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
    .complete 226,1 --Starving Dire Wolf slain (12)
    .complete 226,2 --Rabid Dire Wolf slain (8)
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf

step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 165 >> Turn in The Hermit
    .accept 148 >> Accept Supplies from Darkshire
    .target Abercrombie

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r and |cRXP_FRIENDLY_The Defias Traitor|r
    .goto Westfall,56.33,47.52
    .turnin 142 >> Turn in The Defias Brotherhood
    .turnin 143 >> Turn in Messenger to Westfall
    .accept 144 >> Accept Messenger to Westfall
    .target +Gryan Stoutmantle
    .goto Westfall,55.68,47.50
    .accept 155 >> Accept The Defias Brotherhood
    .target +The Defias Traitor

step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 104 >> Accept The Coastal Menace
    .target Captain Grayson

step
    --TODO: Old Murk-Eye coords
    >>Kill |cRXP_ENEMY_Old Murk-Eye|r. Loot him for his |cRXP_LOOT_Scale|r
    .complete 104,1 --Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye

step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 104 >> Turn in The Coastal Menace
    .target Gryan Stoutmantle

]])

RXPGuides.RegisterGuide([[
#name 20 Ruins of Lordaron
#group Mac Custom
#subgroup 20-30
#next 23-25 Redridge/Duskwood

-- https://www.youtube.com/watch?v=g8wpjb2QgIQ&t=12340s 7:10:26

step
    .hs >> Hearth to Lakeshire

]])

RXPGuides.RegisterGuide([[
#name 23-25 Redridge/Duskwood
#group Mac Custom
#subgroup 20-30
#next TBD

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Verner Osgood|r
    .target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .accept 126 >> Accept Howling in the Hills
step
    .goto Redridge Mountains,12.0,50.0
    >>Kill |cRXP_ENEMY_Bellygrub|r. Loot him for his |cRXP_LOOT_Tusk|r
    .complete 34,1 --Bellygrub's Tusk (1)
    .mob Bellygrub

step
    --TODO: Yowler coords
    >>Kill |cRXP_ENEMY_Yowler|r. Loot him for his |cRXP_LOOT_Paw|r
    .complete 126,1 --Yowler's Paw (1)
    .mob Yowler

]])

RXPGuides.RegisterGuide([[
#name 20-30 Inbox
#group Mac Custom
#subgroup 20-30

-- Finish Defias Messenger Questline
--

--WF Final section

step
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99 --TODO: rest of path cut off
    >>Kill the |cFFFF5722Defias Messenger|r. Loot him for his |cFF00BCD4Mysterious Message|r
    >>|cFFFCDC00The |cFFFF5722Defias Messenger|r spawns in Moonbrook. He walks along the road north of Moonbrook|r --TODO: rest of line cut off
    >>|cFFFCDC00He has a 5 minute respawn timer|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger

step
    .goto Westfall, 56.33, 47.52
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gryan Stoutmantle|r
    .turnin 142 >> Turn in The Defias Brotherhood
    .isQuestComplete 13

step
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25The Defias Traitor|r
    >>This step will NOT auto accept, skip this step for auto accept version (if contested = skip)
    .accept 155,1 >> Accept The Defias Brotherhood
    .target The Defias Traitor

step
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25The Defias Traitor|r
    .accept 155 >> Accept The Defias Brotherhood
    .target The Defias Traitor

step
    .goto Westfall,42.56,71.71
    >>Escort the |cFF00FF25The Defias Traitor|r to The Deadmines
    >>|cFFFCDC00Stay beside |cFF00FF25The Defias Traitor|r at all times! Be ready to fight|r --TODO: rest of line cut off
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor

step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gryan Stoutmantle|r
    .turnin 13 >> Turn in The People's Militia
    .accept 14 >> Accept The People's Militia

    .target Gryan Stoutmantle
    .isQuestComplete 13
step
    #label DefiasFinal
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gryan Stoutmantle|r
    .turnin 142 >> Turn in The Defias Brotherhood
    .target Gryan Stoutmantle

step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 155 >> Turn in The Defias Brotherhood
    .accept 166 >> Accept The Defias Brotherhood -- Head of VanCleef quest
    .turnin 143 >> Turn in Messenger to Westfall
    .accept 144 >> Accept Messenger to Westfall
    .target Gryan Stoutmantle

step
    .goto Westfall, 56.67, 47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Riell|r atop the Tower
    >>Share with party when accepted
    .accept 214 >> Accept Red Silk Bandanas
    .target Scout Riell

step
    #completewith next
    .goto Westfall,30.01,86.02,40 >> Travel to the Westfall Lighthouse

step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 104 >> Accept The Coastal Menace
    .accept 103 >> Accept Keeper of the Flame
    .turnin 103 >> Turn in Keeper of the Flame
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)


step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 104 >> Accept The Coastal Menace
    .target Captain Grayson


step
    #completewith next
    .goto Westfall,64.5,40.6
    .zone Westfall >> Head back to Westfall

]])
