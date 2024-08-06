# i. Import dplyr package
library(dplyr)

# Create a data frame
stats <- data.frame(player = c('A', 'B', 'C', 'D'),
                    runs = c(100, 200, 408, 19),
                    wickets = c(17, 20, 7, 5))

# Add new column avg
print(mutate(stats, avg = runs / 4))

# Drop all and create a new column
print(transmute(stats, avg = runs / 4))

# Create a data frame
stats1 <- data.frame(player = c('A', 'B', 'C', 'D'),
                    runs = c(100, 200, 408, 19),
                    wickets = c(17, 20, NA, 5))

# Fetch required column data
print(select(stats1, player, wickets))


# Create a data frame
stats2 <- data.frame(player = c('A', 'B', 'C', 'D'),
                    runs = c(100, 200, 408, 19),
                    wickets = c(17, 20, NA, 5))

# Fetch players who scored more than 100 runs
print(filter(stats2, runs > 100))
