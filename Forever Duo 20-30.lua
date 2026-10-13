local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[

#name 20-30 Duskwood
#group Mac Custom
#subgroup 20-30
#next 30-60 Beyond

-- Finish Defias Messenger Questline

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
    #completewith BackWF
    >>Kill |cFFFF5722Starving Dire Wolves|r and |cFFFF5722Rabid Dire Wolves|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #label TheHermit
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Abercrombie|r
    .turnin 165 >> Turn in The Hermit
    .accept 148 >> Accept Supplies from Darkshire
    .target Abercrombie
step
    #completewith next
    .goto Westfall,64.5,40.6
    .zone Westfall >> Head back to Westfall


]])