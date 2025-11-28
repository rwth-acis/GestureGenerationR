source("survey_983142_R_syntax_file.R")
open_project_obj <- read.csv("OpenProject.csv", header = TRUE)
inven_tree_obj <- read.csv("InvenTree.csv", header = TRUE)
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
	pssuq_numeric <- data.frame(matrix(nrow=1,ncol=ncol(pssuq)))
	names(pssuq_numeric) <- names(pssuq)
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
