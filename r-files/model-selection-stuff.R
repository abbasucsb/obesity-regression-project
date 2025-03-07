```{r}
full_model <- lm(BMI ~ FAVC + FCVC +NCP+ CAEC 
                 , data = data)
summary(full_model)
```
###Step Wise model starting with intercept
```{r}
model_stepwise <- step(lm(BMI ~1, data = data), direction = "both", scope = formula(full_model))
```
###Backwards Model
```{r}
backward_model <- step(full_model, direction = "backward", )
backward_model
```

###Forward Model
```{r}
forward_model <- step(lm(BMI ~1, data = data), direction = "forward", scope = formula(full_model))
forward_model
```
All versions ended up with the full model as the end result.