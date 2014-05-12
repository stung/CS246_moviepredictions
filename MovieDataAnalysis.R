Movie_Data = read.csv( "dataset.csv", header=TRUE, sep=";")

tempColNames <- colnames(Movie_Data)
tempColNames[2] <- "Title"
tempColNames[4] <- "OpeningWeekendGross"
tempColNames[5] <- "PercentTotalGross"
tempColNames[6] <- "NumTheatersOpened"
tempColNames[7] <- "AverageGross"
tempColNames[8] <- "TotalGross"
tempColNames[9] <- "OpeningDate"
colnames(Movie_Data) <- tempColNames

# Converting dates into R format
Movie_Data$OpeningDate = as.Date(Movie_Data$OpeningDate, '%m/%d/%Y')

# Removing commas and dollar signs
Movie_Data$OpeningWeekendGross = sub('$','', Movie_Data$OpeningWeekendGross, fixed=TRUE)
Movie_Data$OpeningWeekendGross = sub(',','', Movie_Data$OpeningWeekendGross, fixed=TRUE)
Movie_Data$OpeningWeekendGross = sub(',','', Movie_Data$OpeningWeekendGross, fixed=TRUE)

Movie_Data$TotalGross = sub('$','', Movie_Data$TotalGross, fixed=TRUE)
Movie_Data$TotalGross = sub(',','', Movie_Data$TotalGross, fixed=TRUE)
Movie_Data$TotalGross = sub(',','', Movie_Data$TotalGross, fixed=TRUE)

Movie_Data$NumTheatersOpened = sub(',','', Movie_Data$NumTheatersOpened, fixed=TRUE)

Movie_Data$AverageGross = sub('$','', Movie_Data$AverageGross, fixed=TRUE)
Movie_Data$AverageGross = sub(',','', Movie_Data$AverageGross, fixed=TRUE)

# Removing percent signs
Movie_Data$PercentTotalGross = sub('%','', Movie_Data$PercentTotalGross, fixed=TRUE)

# New movie data
m <- read.table("movies.tab", sep="\t", header=TRUE, quote="", comment="")
