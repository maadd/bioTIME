library(grid)
library(Gmisc)

grid.newpage()

### build the boxes
fishCom <- boxGrob("\nFish community change\n through time\n", x=0.6, y=0.8, box_gp = gpar(fill = "#abdda4"))
socEc <- boxGrob("Socio-economic \nfactors", x=0.6, y=0.2, box_gp = gpar(fill = "#d53e4f"))
climCh <- boxGrob("Environmental factors\n including temperature\n", x=0.2, y=0.8, box_gp = gpar(fill = "#fdae61"))
fish <- boxGrob("Fishing practices\n", x=0.2, y=0.4, box_gp = gpar(fill = "#3288bd"))
fishMan <- boxGrob("Fisheries management\n policies", 
                   x=0.95, y=0.5, just="left", bjust = "right", box_gp = gpar(fill = "#5e4fa2"))

### get arrows
connectGrob(fishCom, socEc, "vertical")
connectGrob(fishCom, climCh, "horizontal")
connectGrob(climCh, fish, "vertical")
connectGrob(socEc, fish, "horizontal")
connectGrob(fish, socEc, "horizontal")
connectGrob(fishMan, fish, "horizontal")
connectGrob(fishCom, fish, "vertical", lty_gp = gpar(lwd=1, col="black", fill="black"))

### show the plot
fishCom
socEc
climCh
fishMan
fish