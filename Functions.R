pollutantmean <- function(directory = "SpecData", pollutant, id ) {
              files <- list.files(directory, full.names = T)
              dat <- data.frame()
              
              for (i in id) {
                      dat <- rbind(dat, read.csv(files[i]))
                                          
              }
              
              mean(dat[, pollutant], na.rm = T)            
             
          
}

