
# Problem 2

# creating column names for col.names argument in read_csv
column_names <- c("name", "a_26", "m_b", "log_lk", "log_m26", "log_mhi", "vlg", "ti1", "md", "D", "delta_vlg", "count")


# Read the text file using read.csv
galaxies <- read.csv("suites_dw_Table1.txt", header = FALSE, sep ="|",  skip = 16, col.names = column_names,
                     strip.white = TRUE)


# View the first rows of the data
head(galaxies)

# Summary statistics 
summary(galaxies)


# Problem 3

#import for plotting 
library(ggplot2)

# Create a histogram for linear diameter
ggplot(galaxies, aes(x = a_26)) +
  geom_histogram(binwidth = 0.4, colour = "blue", alpha = 0.3) +
  theme_classic() +
  labs(title = "Distribution of galaxy diameter",
       x = "Linear diameter",
       y = "Number of galaxies")

# The histgram presents the distribution of galaxies measured in linear diameter of the galaxy in kpc.
# Since the majority of observed galaxies do have a smaller linear diameter, i can not conclude that smaller
# galaxies are under-represented in the data. 