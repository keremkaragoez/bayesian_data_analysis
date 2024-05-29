#Los Angeles

la_income <- rnorm(1, mean = 74142, sd = 15000) 
la_sd_income <- rgamma(1, shape = 2, rate = 0.0001)

# Load necessary library
library(ggplot2)

# Set seed for reproducibility
set.seed(123)

# Generate random samples
la_income <- rnorm(1, mean = 74142, sd = 15000) 
la_sd_income <- rgamma(1, shape = 2, rate = 0.0001)

# Print generated values
print(paste("LA Income:", la_income))
print(paste("LA SD Income:", la_sd_income))

# Generate data for plotting
income_data <- rnorm(1000, mean = 74142, sd = 15000)
sd_income_data <- rgamma(1000, shape = 2, rate = 0.0001)

# Create data frame for ggplot
df <- data.frame(
  values = c(income_data, sd_income_data),
  type = rep(c("Income", "SD Income"), each = 1000)
)

# Plot the distributions
ggplot(df, aes(x = values, fill = type)) +
  geom_density(alpha = 0.5) +
  labs(title = "Distributions of LA Income and SD Income",
       x = "Values",
       y = "Density",
       fill = "Type") +
  theme_minimal()

#Nuuk
# Set seed for reproducibility
set.seed(123)

# Generate random samples
temp_nuuk_norm <- rnorm(1000, mean = -5.6, sd = 10)
temp_nuuk_gamma <- rgamma(1000, shape = 2, rate = 0.1)

# Create data frame for ggplot
df <- data.frame(
  values = c(temp_nuuk_norm, temp_nuuk_gamma),
  type = rep(c("Normal Distribution", "Gamma Distribution"), each = 1000)
)

# Plot the distributions
ggplot(df, aes(x = values, fill = type)) +
  geom_density(alpha = 0.5) +
  labs(title = "Temperature Distributions in Nuuk",
       x = "Temperature (°C)",
       y = "Density",
       fill = "Distribution Type") +
  theme_minimal()


# Set seed for reproducibility
set.seed(123)

# Generate random samples
percent_alcohol <- rnorm(1000, mean = 14, sd = 1.5)
percent_alcohol <- pmin(pmax(percent_alcohol, 0), 100)

sugar_content <- rnorm(1000, mean = 3, sd = 1)
sugar_content <- pmax(sugar_content, 0)

# Create data frame for ggplot
df <- data.frame(
  values = c(percent_alcohol, sugar_content),
  type = rep(c("Percent Alcohol", "Sugar Content"), each = 1000)
)

# Plot the distributions
ggplot(df, aes(x = values, fill = type)) +
  geom_density(alpha = 0.5) +
  labs(title = "Distributions of Percent Alcohol and Sugar Content",
       x = "Values",
       y = "Density",
       fill = "Type")


yearly_change <- rnorm(1, mean = -5, sd = 3) 
# Set seed for reproducibility
set.seed(123)

# Generate random samples for yearly change
yearly_change_samples <- rnorm(1000, mean = -5, sd = 3)

# Create data frame for ggplot
df_yearly_change <- data.frame(
  yearly_change = yearly_change_samples
)

# Plot the distribution
ggplot(df_yearly_change, aes(x = yearly_change)) +
  geom_density(fill = "blue", alpha = 0.5) +
  labs(title = "Distribution of Yearly Change in Percent",
       x = "Yearly Change",
       y = "Density") +
  theme_minimal()



