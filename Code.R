#Shortening names
	world <- WorldBankData

#Introduction of percentage
#Just introduce name of new column
	world$percent <- world$internet.users/world$population

#Selecting years 1990 onwards
	world1990 <- world[world$year>=1990,]

#Introduction of 'years since 1990'
#Just introduce new column
	world1990$since <- world1990$year-1990

#Chose Denmark
	denmark <- world1990[world1990$Country=='Denmark',]

#Chose Belarus
	belarus <- world1990[world1990$Country=='Belarus',]

#Denmark models
	expFit(denmark$since, denmark$percent)
	logisticFit(denmark$since, denmark$percent)

#Belarus models
	expFit(belarus$since, belarus$percent)
	logisticFit(belarus$since, belarus$percent)
