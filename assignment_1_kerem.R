library(dplyr)
library(ggplot2)
#TASK1

# Define the number of sides of the dice
dice_sides <- 1:6

# Generate all possible sequences of three dice throws
all_combinations <- expand.grid(dice_sides, dice_sides, dice_sides)

# Name the columns
colnames(all_combinations) <- c("Die1", "Die2", "Die3")

# Get the first 10 rows
first_10 <- head(all_combinations, 10)

# Get the last 10 rows
last_10 <- tail(all_combinations, 10)

# Number of possible outcomes
num_outcomes <- nrow(all_combinations)

print(first_10)
print(last_10)
print(num_outcomes)

#TASK2

# Generate all possible outcomes when throwing 3 dice
outcomes <- expand.grid(Die1 = 1:6, Die2 = 1:6, Die3 = 1:6)

# Calculate the sum of each outcome
outcomes$Sum <- outcomes$Die1 + outcomes$Die2 + outcomes$Die3

# Create a summary table for the sums and their probabilities
sum_probabilities <- outcomes %>%
  group_by(Sum) %>%
  summarise(Probability = n() / nrow(outcomes))

print(sum_probabilities)

# Plot the bar chart of the possible sums
ggplot(sum_probabilities, aes(x = Sum, y = Probability)) +
  geom_bar(stat = "identity", fill = "blue", alpha = 0.7) +
  labs(title = "Probability Distribution of Sums for 3 Dice Rolls",
       x = "Sum", y = "Probability") +
  theme_minimal() +
  scale_x_continuous(breaks = sum_probabilities$Sum)

#TASK3

# Filter outcomes where at least one of the dies shows a 3
filtered_outcomes <- outcomes %>%
  filter(Die1 == 3 | Die2 == 3 | Die3 == 3)

# Calculate the probability that the sum of the dies is ≥ 10
total_filtered_outcomes <- nrow(filtered_outcomes)
desired_outcomes <- filtered_outcomes %>%
  filter(Sum >= 10)

probability <- nrow(desired_outcomes) / total_filtered_outcomes

# Probability of the sum is ≥ 10, given that at least one of the dice shows a 3
print(probability)
