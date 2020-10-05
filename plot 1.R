#Cargar base
dataFile <- "./data/household_power_consumption.txt"
base <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subbase <- base[base$Date %in% c("1/2/2007","2/2/2007") ,]

#Crear histograma
globalActivePower <- as.numeric(subbase$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off() #guardado
