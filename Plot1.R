#use the following code after you save in your working space the data files "summarySCC_PM25.rds" and "Source_Classification_Code.rds"

{NEI <- readRDS("summarySCC_PM25.rds")

SCC <- readRDS("Source_Classification_Code.rds")

EmByYear <- aggregate(Emissions ~ year,NEI, sum)

View(EmByYear)

png("plot1.png",width=480,height=480,units="px",bg="transparent") 

barplot((EmByYear$Emissions)/1000000, names.arg=EmByYear$year, xlab="Year", ylab="PM2.5 Emissions (Million Tons)", main="Total PM2.5 Emissions From All US Sources")

dev.off()}
