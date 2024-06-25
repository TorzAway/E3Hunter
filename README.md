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
ReclaimDC=FALSE - (Turn to TRUE to reclaim Diamond Coin)
---
LootMethod=DCONLY - (OPTIONS: DCONLY to loot Diamond COin and HIGH VALUE stackable items / E3 to have E# system handle all looting)
---
---
[Camp]
-
CampRadius=2500 - [DO NOT ALTER OR EDIT THIS]
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

