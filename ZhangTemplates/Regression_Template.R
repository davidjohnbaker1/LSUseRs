### MULTIPLE HIERARCHICAL REGRESSION TEMPLATE
        ### Packages used
                #library(apaTables)
                #library(dplyr)

        ### Create data frame with missing values removed
                reg.data <- na.omit(select(xData, c("y1","x1","x2")))
                
        ### Create hierarchical models
                reg.model.1 <- lm(y1 ~ x1, data = reg.data)
                reg.model.2 <- lm(y1 ~ x2 + x1, data = reg.data)
        
        ### Summary Regression models
                summary(reg.model.1)
                summary(reg.model.2)
        
        ### ANOVA Tables with R-Squared Change
                anova(reg.model.1, reg.model.1)
                
        ### Create APA regression table
                apa.reg.table(reg.model.1,reg.model.2, filename = "RegTable.1.doc")
