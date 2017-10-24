### Template for descriptive table and correlation table

###### DESCRIPTIVE STATISTICS #######
        ### Create separate data frames
                #library(dplyr)
                descrip.data <- select(xData, var1:var10)
                cor.data <- select(xData, varA:varZ)
                
        ### Summary Statistics
                #library(psych)
                psych::describe(descrip.data)
                #library(skimr)
                skim(descrip.data) 
        
        ### Histograms of Specific Vars
                ggplot(descrip.data, aes(var1)) +
                        geom_histogram(bins = 30) 
        
        ### Frequency Tables
                #library(plyr)
                plyr::count(xData, 'var1')
                #Can be used to count marginal tables
                plyr::count(xData, c('sex','ethnicity'))
                
        ### Correlation Tables
                #Printable pearson's correlation matrix
                #library(apaTables)
                apa.cor.table(cor.data, filename = "cortable.doc", show.conf.interval = F)
                
                #Create correlation object
                cor.table <- cor(na.omit(cor.data))
                

                