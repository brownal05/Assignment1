pollutantmean <- function(directory = "SpecData", pollutant, id ) {
              files <- list.files(directory, full.names = T)
              dat <- data.frame()
              
              for (i in id) {
                      dat <- rbind(dat, read.csv(files[i]))
                                          
              }
              
              
              dat_subset <- dat[dat["sulfate", "nitrate"] == pollutant,] ## This is where it goes wrong
              ## dat_subset is turned all NA for some reason
              mean(dat_subset, n.rma = T)             
             
          
}

