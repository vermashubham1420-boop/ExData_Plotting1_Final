NEI <- readRDS("summarySCC_PM25.rds")
baltimore <- subset(NEI, fips == "24510")
totalBalt <- tapply(baltimore$Emissions, baltimore$year, sum)
png("plot2.png", width = 480, height = 480)
barplot(totalBalt / 1000, names.arg = names(totalBalt),
        xlab = "Year", ylab = "Total PM2.5 Emissions (kilotons)",
        main = "Total PM2.5 Emissions in Baltimore City, MD (1999-2008)")
dev.off()

