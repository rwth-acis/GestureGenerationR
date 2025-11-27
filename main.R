library(AICcmodavg)
library(tidyverse)
library(s20x)
# Read in data
source("survey_983142_R_syntax_file.R")
open_project_obj <- read.csv("OpenProject.csv", header = TRUE)
inven_tree_obj <- read.csv("InvenTree.csv", header = TRUE)

# Preprocess data
col_names <- c("Emblem", "Adaptor", "Deitic", "OpenProject", "Objective", "System_Usefulness", "Information_Quality", "Interface_Quality")

fill_main_frame <- function(csv,blocking) {
	df <- data.frame(matrix(ncol = 7, nrow = 0))
	for (i in rownames(csv)){
		group <- csv[i, 1]
		group <- group - 1
		deitic <- bitwAnd(group, 4) > 0
		adaptor <- bitwAnd(group, 2) > 0
		emblem <- bitwAnd(group, 1) > 0
		objective <- rowSums(csv[i,2:ncol(csv)]) / (ncol(csv) - 1)
		df <- rbind(df, c(emblem, adaptor, deitic, blocking, objective, NA, NA, NA))
	}
	colnames(df) <- col_names
	df$Emblem <- factor(df$Emblem)
	df$Adaptor <- factor(df$Adaptor)
	df$Deitic <- factor(df$Deitic)
	df$OpenProject <- factor(df$OpenProject)
	return(df)
}

open_proj_df <- fill_main_frame(open_project_obj, 1)
inven_tree_df <- fill_main_frame(inven_tree_obj, 0)

for (i in rownames(data)) {
	pssuq <- data[i,20:51]
	# The data dataframe is constraint to literals
	pssuq_numeric <- data.frame(matrix(nrow=1,ncol=ncol(pssuq)))
	names(pssuq_numeric) <- names(pssuq)
	# Invert
	for (j in colnames(pssuq)) {
		pssuq_numeric[1,j] <- 8 - as.numeric(as.character(pssuq[1,j]))
	}
	open_proj_df[i, "System_Usefulness"] <- rowSums(pssuq_numeric[1,1:6]) / 6
	open_proj_df[i, "Information_Quality"] <- rowSums(pssuq_numeric[1,7:12]) / 6
	open_proj_df[i, "Interface_Quality"] <- rowSums(pssuq_numeric[1,13:16]) / 4
	inven_tree_df[i, "System_Usefulness"] <- rowSums(pssuq_numeric[1,17:22]) / 6
	inven_tree_df[i, "Information_Quality"] <- rowSums(pssuq_numeric[1,23:28]) / 6
	inven_tree_df[i, "Interface_Quality"] <- rowSums(pssuq_numeric[1,29:32]) / 4
}

combined_df <- rbind(open_proj_df, inven_tree_df)

construct_models <- function(dependent, vector_formulars) {
	models <- list()
	i <- 1
	for (formula in vector_formulars) {
		form <- formula(paste(dependent, "~", formula))
		model <- aov(form, data = combined_df)
		models[[i]] <- model
		i <- i + 1
	}
	return(models)
}

formulas <- c(
	"Deitic",
	"Emblem",
	"Adaptor",
	"Deitic + OpenProject",
	"Emblem + OpenProject",
	"Adaptor + OpenProject",
	"Deitic + Emblem + Adaptor",
	"Deitic + Emblem + Adaptor + OpenProject",
	"Deitic * Emblem * Adaptor",
	"Deitic * Emblem * Adaptor + OpenProject"
)
models <- construct_models("Objective", formulas)
top_models <- c()
print("AICc for Objective")
aictab(models, modnames = formulas)
top_models[[1]] <- models[[3]]
print("Best model =>")
print(summary(top_models[[1]]))
# Analysis Information Quality

models <- construct_models("Information_Quality", formulas)
print("AICc for Info Quality")
aictab(models, modnames = formulas)
top_models[[2]] <- models[[6]]
print("Best model =>")
print(summary(top_models[[2]]))

models <- construct_models("Interface_Quality", formulas)
print("AICc for Interface Quality")
aictab(models, modnames = formulas)
top_models[[3]] <- models[[6]]
print("Best model =>")
print(summary(top_models[[3]]))

models <- construct_models("System_Usefulness", formulas)
print("AICc for System Usefulness")
aictab(models, modnames = formulas)
top_models[[4]] <- models[[6]]
print("Best model =>")
print(summary(top_models[[4]]))

print("Group means by Objective:")
# Means
means <- combined_df |>
	group_by(Adaptor) |>
	summarise(
		mean = mean(Objective)
	)
print(means)

print("Group means by Info Quality:")
# Means
means <- combined_df |>
	group_by(Adaptor,OpenProject) |>
	summarise(
		mean = mean(Information_Quality)
	)
print(means)

print("Group means by Interface Quality:")
# Means
means <- combined_df |>
	group_by(Adaptor,OpenProject) |>
	summarise(
		mean = mean(Interface_Quality)
	)
print(means)

print("Group means by System Usefulness:")
# Means
means <- combined_df |>
	group_by(Adaptor,OpenProject) |>
	summarise(
		mean = mean(System_Usefulness)
	)
print(means)

print("Normality checks")
# Normality check
for (i in 1:4) {
	print(shapiro.test(top_models[[i]]$residuals))
}

for (i in 1:4) {
	pdf(paste("QQ", i, ".pdf", sep = ""))
	qqnorm(top_models[[i]]$residuals, main = "", xlab = "Normal", ylab = "Data")
	qqline(top_models[[i]]$residuals, col = "red")
	dev.off()
}

print("Homoscedasticity check")
# Homoscedasticity
for (i in 1:4) {
	levene.test(top_models[[i]])
}

#plot <- ggplot(combined_df, aes(x = Adaptor, y = Objective)) + 
#	geom_point(cex = 1.5, pch = 1.0,position = position_jitter(w = 0.1, h = 0))

boxplot_data <- function(df) {
	box <- data.frame(matrix(ncol = 5, nrow = ncol(df)))
	colnames(box) <- c("Minimum","LQ","Median","UQ","Maximum")

	for (i in seq_len(nrow(box))) {
		quantils <- quantile(df[,i])
		box$Minimum[[i]] <- quantils[[1]]
		box$LQ[[i]] <- quantils[[2]]
		box$Median[[i]] <- quantils[[3]]
		box$UQ[[i]] <- quantils[[4]]
		box$Maximum[[i]] <- quantils[[5]]
	}
	return(box)
}

# SUS
sus <- data[, 52:61]
# SUS Box Plots
#sus_box <- data.frame(matrix(ncol = 5, nrow = 10))
#colnames(sus_box) <- c("Minimum","LQ","Median","UQ","Maximum")
sus_box <- boxplot_data(sus)

# SUS score
sus_score <- apply(sus, 1, function(score) 2.5 * (score - 1))
sus_score <- apply(sus_score, 2, sum)
sus_score <- mean(sus_score)

print("Self Assessment Box Plots")
# Self Assessment
self <- data[,9:17]
self_box <- boxplot_data(self)
print(self_box)

print("Gesture Assessment Box Plots")
# Gestures
gestures <- data[,62:68]
gesture_box <- boxplot_data(gestures)
print(gesture_box)

print("LLM Experience Box Plots")
# LLM Experience
llm <- data[,76:81]
llm_box <- boxplot_data(llm)
print(llm_box)
