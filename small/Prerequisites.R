for (i in 1:4) {
	shapiro.test(top_models[[i]]$residuals)
}

for (i in 1:4) {
	levene.test(top_models[[i]])
}
