	UPDATE entcom
	JOIN fournis ON fournis.numfou=entcom.numfou
	SET entcom.obscom="******"
	WHERE fournis.satisf<5