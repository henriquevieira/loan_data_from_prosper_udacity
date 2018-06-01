# Processing 

# load packages
library(dplyr)

data_sample <- read.csv('prosperLoanData.csv')

str(data_sample)

# turn NA to zero, where zero is equal to None, in ProsperScore
data_sample$ProsperScore[is.na(data_sample$ProsperScore)] <- 0
head(data_sample$ProsperScore, 25)

# turn Empty to None in CreditGrade
data_sample$CreditGrade <- as.character(data_sample$CreditGrade)
data_sample$CreditGrade[data_sample$CreditGrade == ''] <- 'None'
head(data_sample$CreditGrade, 25)

# Check data_sample$ListingCategory..numeric. 
head(data_sample$ListingCategory..numeric., 25)

# Create column ListingCategory
data_sample$ListingCategory <- "None"

# Check new column
head(data_sample$ListingCategory, 25)

# Put real values
# 0 - Not Available
# 1 - Debt Consolidation
# 2 - Home Improvement
# 3 - Business
# 4 - Personal Loan
# 5 - Student Use
# 6 - Auto
# 7 - Other
# 8 - Baby&Adoption
# 9 - Boat
# 10 - Cosmetic Procedure
# 11 - Engagement Ring
# 12 - Green Loans
# 13 - Household Expenses
# 14 - Large Purchases
# 15 - Medical/Dental
# 16 - Motorcycle
# 17 - RV
# 18 - Taxes
# 19 - Vacation
# 20 - Wedding Loans

data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 0] <- 'Not Available'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 1] <- 'Debt Consolidation'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 2] <- 'Home Improvement'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 3] <- 'Business'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 4] <- 'Personal Loan'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 5] <- 'Student Use'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 6] <- 'Auto'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 7] <- 'Other'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 8] <- 'Baby&Adoption'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 9] <- 'Boat'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 10] <- 'Cosmetic Procedure'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 11] <- 'Engagement Ring'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 12] <- 'Green Loans'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 13] <- 'Household Expenses'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 14] <- 'Large Purchases'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 15] <- 'Medical/Dental'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 16] <- 'Motorcycle'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 17] <- 'RV'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 18] <- 'Taxes'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 19] <- 'Vacation'
data_sample$ListingCategory[data_sample$ListingCategory..numeric. == 20] <- 'Wedding Loans'

# Check new values in column ListingCategory
head(data_sample$ListingCategory, 25)

# Create column pos_july_2009
data_sample$pos_july_2009 <- data_sample$CreditGrade == 'None'

str(data_sample)

write.table(data_sample, "prosperLoanData_edited.csv", 
           sep="\t", quote=FALSE, row.names=FALSE)
