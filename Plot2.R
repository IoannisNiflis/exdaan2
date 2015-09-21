{

NEI <- readRDS("summarySCC_PM25.rds")

SCC <- readRDS("Source_Classification_Code.rds")

# Baltimore's fip.
    
balNEI <- NEI[NEI$fips=="24510",]
    
   
 # Aggregate  sum of Baltimore emissions by year
    
aggBalbyYear <- aggregate(Emissions ~ year, balNEI,sum)
    
   
 png("plot2.png",width=480,height=480,units="px",bg="transparent")
    
    barplot(
        aggBalbyYear$Emissions/1000,
        names.arg=aggBalbyYear$year,
        xlab="Year",
        ylab="PM2.5 Emissions (thousands Tons)",
        main="Total PM2.5 Emissions From all Baltimore City Sources"
    )
    
    dev.off()}
