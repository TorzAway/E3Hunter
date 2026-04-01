# TurboLooterPick
Sets the E3Variable GrpMainLooter which should be PUBLISHED in E3 by your TANK/DRIVER.


[E3BotsPublishData (key/value)]
GrpMainLooterName=${GrpMainLooter}


That E3vARIABLE ( GrpMainLooter ) is referenced in MQ2Mono queries using the published KEY ( GrpMainLooterName )

Example: 

	|------------------------------------------------------------
	| Set Turbolooter to the pulled variablie from Mq2Mono Query.
	|------------------------------------------------------------
	/varset TurboLooter ${MQ2Mono.Query[e3,E3Bots(${Me.CleanName}).Query(GrpMainLooterName)]}
	|------------------------------------------------------------	

