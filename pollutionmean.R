pollutantmean <- function(directory, pollutant, id = 1:332) {
  

    filelist <- list.files(path = "C:/Users/hilkka.kontro/Coursera/specdata/", full.names=T)[id]

    temp.frame <- data.frame()
    
    
    for(i in filelist){
    
    temp.frame <- rbind(temp.frame, read.csv(filelist)[id])
}
    
    if (pollutant == 'sulfate') {
   
       mean(temp.frame$sulfate, na.rm = TRUE)
      
  } else if (pollutant == 'nitrate') {
    
    
    mean(temp.frame$nitrate, na.rm = TRUE)
  }
  
}
