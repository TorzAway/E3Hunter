# E3Hunter
A MacroQuest macro to automate single pull (Generic or Specific Mob) OR location based killing for any zone.

This macro will keep track and be able to pick up where you left off at any point if you /END and restart the macro. 

InI File:
MQ\Config\E3Hunter_[ToonName].ini

InI Setings Explained:

[General]
--- 
Debugging=FALSE - (Turn Debugging On/Off) - [DO NOT ALTER OR EDIT THIS]
---
HuntMethod=Any - (Options are to pull by: LOC | ANY | NAME)
---
AssistMe=TRUE - [DO NOT ALTER OR EDIT THIS]
---
CheckBots=TRUE - (Turn to TRUE/FALSE to Enable/Disable group Mana and Endurance checking)
---
DoBurns=FALSE - (Turn to TRUE/FALSE to Enable/Disable calls for burns if overwhelmed)
---
GroupNavToMe=TRUE - [DO NOT ALTER OR EDIT THIS]
---
UseClickBuffs=FALSE - (Turn to TRUE/FALSE to Enable/Disable to use advanced high end ClickyBuff items)
---
UseClickDamage=FALSE - (Turn to TRUE/FALSE to Enable/Disable to use advanced high end ClickyDamage items)
---
UseMq2Melee=FALSE - (Turn to TRUE to Enable MQ2Melee plugin / FALSE to Disable MQ2Melee plugin)
---
LootCorpse=TRUE - (Turn to TRUE to Loot corpses)
---
LootMethod=DCONLY - (OPTIONS: DCONLY to loot Diamond Coin and HIGH VALUE stackable items / E3 to have E3 system handle all looting)
---
NoDropGankItems - (List of NO DROP items your group should loot! *Separated by comma*)
EXAMPLE: NoDropGankItems=Crystal-Gemmed Signet,Discolored Signet,Dust-Marred Signet
---
MinItemValue - (What is the minumum valuie in plat an item should sell for to loot it?)
---
ReclaimDC=FALSE - (Turn to TRUE to reclaim Diamond Coin)
---
---
[Camp]
-
RV_CampRadius=2500 - [DO NOT ALTER OR EDIT THIS]
---
RV_GetMobAtFullHealth=1 - Should mob be at full health when targetted? 0=no 1=yes"
---
RV_Range=10 - "How far is the combat range?"
---
RV_ZRadius=500 - [DO NOT ALTER OR EDIT THIS]
---
RV_MinZRange=-50 - "What is the minimum Z Value of mobs I should target?"
---
RV_MaxZRange=50 - "What is the maximum Z Value of mobs I should target?"
---
RV_FailMax=3 - "How many times should aquire target fail before delaying?"
---
RV_StepValue=25 - "What is the distance value between each radius check (steps) ?"
---
RV_SpawnRecheckTimer=60 - "How many seconds to wait for respawns (if none found) ?"
---
---
[Pull]
-
ZRadius=500 - [DO NOT ALTER OR EDIT THIS]
---
PullAbility=ReplaceMeWithYourSkill 
---
PullAbilityRange=30 - (What is the MAXimum range of your pull Ability - 30 is a good value)
---
---
PullRequiresLineOfSight=TRUE - [DO NOT ALTER OR EDIT THIS]
---
UseCastSpells=FALSE - (HardForce your driver to cast his detrimental memorized spells in combat )
---
---
[Endurance]
-
MedEndAt=30 - (Value to start medding for Endurance)
---
MedEndTill=95 - (Value to stop medding for Endurance)
---
---
[Mana]
-
MedAt=30 - (Value to start medding for Mana)
---
MedTill=95 - (Value to stop medding for Mana)
---
BardMed=TRUE - (Shoulkd your Bard be considered when checking for Mana medding ?)
---
---
[Alerts]
-
AFKGM=TRUE - ( Go AFK if a GM is detected ?)
---
UseBeep=TRUE - ( BEEP if a GM is detected ?)
---
---
[Zone]
-
[DO NOT ALTER OR EDIT THESE]

