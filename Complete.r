complete <- function(directory = "SpecData", id = 1:323){
            files <- list.files(directory, full.names = T) ## calling files
            dat <- data.frame(matrix(NA, nrow=0, ncol=2)) ##matrix to put results in
            
            for (i in id) {
            dat <- rbind(dat, read.csv(files[i])) ## rbind files and put them in dat
            
            }
            results <- sum(complete.cases(dat))
            
} 