library(survival)

survival_times <- c(1, 22, 3, 12, 8, 17, 2, 11, 8, 12, 2, 5, 4, 15, 8, 23, 5, 11, 4, 1, 8)

event_status <- rep(1, length(survival_times))

surv_obj <- Surv(time = survival_times, event = event_status)

km_fit <- survfit(surv_obj ~ 1)

# summary(km_fit)

jpeg(file = "survival.jpeg")
plot(km_fit, xlab = "Time", ylab = "Survival Probability", main = "Survival time for 21 acute leukemia patients", col = "blue")
dev.off()