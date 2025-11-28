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

get_top_aicc <- function(measur, formulas) {
	models <- construct_models(measur, formulas)
	aic <- aictab(models, modnames = formulas)
	top_model_formula <- aic[[1,1]]
	for (model in models) {
		model_formula <- toString(model$terms[[3]])
		model_formula_s <- str_split(model_formula, ", ")[[1]]
		if(length(model_formula_s) == 3) {
			model_formula <- paste(model_formula_s[[2]],model_formula_s[[1]],model_formula_s[[3]])
		}
		if(model_formula == top_model_formula) {
			return(model)
		}
	}
}

formulas <- c(
	"Deitic", "Emblem", "Adaptor", "Deitic + OpenProject", "Emblem + OpenProject", "Adaptor + OpenProject", "Deitic + Emblem + Adaptor", "Deitic + Emblem + Adaptor + OpenProject", "Deitic * Emblem * Adaptor", "Deitic * Emblem * Adaptor + OpenProject"
)
i <- 1
top_models <- c()
for(measure in c("Objective", "Information_Quality", "Interface_Quality", "System_Usefulness")) {
	top_models[[i]] <- get_top_aicc(measure,formulas)
	i <- i+1
}
