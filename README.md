# R_Analysis

## MPG Regression

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Plot MPG vs. different variables first, then quantify the strength of the correlation between the variables,
MPG vs. Vehicle Length: r-value = 0.609, which is a moderate positive correlation
MPG vs. Vehicle Weight: r-value = 0.091, which has no correlation 
MPG vs. Spoiler Angle: r-value = -0.021, which has no correlation 
MPG vs. Ground Clearance: r-value = 0.329, which is a weak positive correlation

2. Is the slope of the linear model considered to be zero? Why or why not?

To generate a linear regression model, I only used vehicle length data, because it has a moderate positive correlation to MPG.
r_squared value = 0.3715, linear regression equation: y = 4.673x - 25.062. 

Linear Regression Model Summary: 

lm(formula = mpg ~ vehicle.length, data = mecha_cars)

Residuals:
    Min      1Q  Median      3Q     Max 
-26.303  -7.160  -1.231   9.374  26.670 

Coefficients:
               Estimate Std. Error t value Pr(>|t|)    
(Intercept)    -25.0622    13.2960  -1.885   0.0655 .  
vehicle.length   4.6733     0.8774   5.326 2.63e-06 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 12.47 on 48 degrees of freedom
Multiple R-squared:  0.3715,	Adjusted R-squared:  0.3584 
F-statistic: 28.37 on 1 and 48 DF,  p-value: 2.632e-06

We cannot generate linear regression model for the variables have no correlation to MPG, because the r-squared value is zero, then the slope would be zero. 

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The r-squared value of multiple linear regression is 0.7032, which means that 70% of our predictions will be accurate.
Therefore the linear model predict mpg pf MechaCar prototype is not effective, we need more variables and data to generate a more accurate linear model. 

Multiple Linear Regression Model Summary:

Call:
lm(formula = mpg ~ vehicle.length + vehicle.weight + spoiler.angle + 
    ground.clearance, data = mecha_cars)

Residuals:
     Min       1Q   Median       3Q      Max 
-21.3395  -4.1155  -0.2094   6.8789  17.2672 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.076e+02  1.576e+01  -6.823 1.87e-08 ***
vehicle.length    6.240e+00  6.609e-01   9.441 3.05e-12 ***
vehicle.weight    1.277e-03  6.948e-04   1.837   0.0728 .  
spoiler.angle     8.031e-02  6.656e-02   1.207   0.2339    
ground.clearance  3.659e+00  5.394e-01   6.784 2.13e-08 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.853 on 45 degrees of freedom
Multiple R-squared:  0.7032,	Adjusted R-squared:  0.6768 
F-statistic: 26.65 on 4 and 45 DF,  p-value: 2.277e-11


## Suspension Coil Summary

1. Overall Summary
Mean: 1498.78
Median: 1500
Variance: 62.29356
Standard_Deviation: 7.892627

2. Summary by Manufacturing Lots
Lot1
Mean: 1500.00
Median: 1500.0
Variance: 0.9795918
Standard_Deviation: 0.9897433

Lot2
Mean: 1500.20
Median: 1500.0
Variance: 7.4693878
Standard_Deviation: 2.7330181

Lot3
Mean: 1496.14
Median: 1498.5
Variance: 170.2861224	
Standard_Deviation: 13.0493725

3. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. Does the current manufacturing data meet this design specification? Why or why not?

The current manufacturing data meets the design specification, because the variance of the dataset is 62psi which not exceed 100psi. 
However, the variance of lot 3 is 170psi which does not meet the design specification and will affect the overall performance. 


## Suspension Coil T-Test

1. Hypotheses
H0:  The sample population is statistically similar to the population
H1:  The sample population is not statistically similar to the population

2. Assumption: The sample data was randomly selected from its population data.
               The sample distribution is similar to the population.

3. The sample size is not less than 30. 

4. After plot the data, it has a minor left skewed distribution. Using a log-transformation to reduce the effects of extreme values and to make the distribution tail more symmetrical.

Results:
Using one Sample t-test, the p-value is 0.06028 > 0.05, this means we do not have sufficient evidence to reject the null hypothesis.
We can conclude that the two means are statistically similar.


## Design Your Own Study

Cost: (continuous) Linear Regression
- Lower cost will be an important factor for people buying cars.

Color: (nominal) ANOVA
- What color would be popular for MechaCar.

Safety Ranking: (ordinal) ANOVA
- The higher safety ranking will attract more customers.

Here are possible tests and hypotheses: 

ANOVA & Linear Regression Hypotheses
H0: The certain metric does not affect customers' purchasing decision
H1: The certain metric does affect customers' purchasing decision

One-Sample t-Test Hypothesis
H0: The sample customer is representative of the population
H1: The sample customer is not representative of the population
