data <- read.csv("survey_983142_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE, fileEncoding="UTF-8-BOM")


# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"
# LimeSurvey Field type: DATETIME23.2
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"
# LimeSurvey Field type: F
data[, 3] <- as.numeric(data[, 3])
attributes(data)$variable.labels[3] <- "lastpage"
names(data)[3] <- "lastpage"
# LimeSurvey Field type: A
data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "startlanguage"
names(data)[4] <- "startlanguage"
# LimeSurvey Field type: A
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "seed"
names(data)[5] <- "seed"
# LimeSurvey Field type: DATETIME23.2
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "startdate"
names(data)[6] <- "startdate"
# LimeSurvey Field type: DATETIME23.2
data[, 7] <- as.character(data[, 7])
attributes(data)$variable.labels[7] <- "datestamp"
names(data)[7] <- "datestamp"
# LimeSurvey Field type: A
data[, 8] <- as.character(data[, 8])
attributes(data)$variable.labels[8] <- "Your two feature groups:"
names(data)[8] <- "G01Q16"
# LimeSurvey Field type: F
data[, 9] <- as.numeric(data[, 9])
attributes(data)$variable.labels[9] <- "[I felt confident working on the tasks.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree) regarding your performance with the tasks from the task sheet."
names(data)[9] <- "G01Q11_SQ001"
# LimeSurvey Field type: F
data[, 10] <- as.numeric(data[, 10])
attributes(data)$variable.labels[10] <- "[I feel like I accomplished the given tasks.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree) regarding your performance with the tasks from the task sheet."
names(data)[10] <- "G01Q11_SQ002"
# LimeSurvey Field type: F
data[, 11] <- as.numeric(data[, 11])
attributes(data)$variable.labels[11] <- "[I was satisfied with the speed at which I accomplished the tasks.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree) regarding your performance with the tasks from the task sheet."
names(data)[11] <- "G01Q11_SQ005"
# LimeSurvey Field type: F
data[, 12] <- as.numeric(data[, 12])
attributes(data)$variable.labels[12] <- "[The information from the agent helped me accomplish the tasks.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree) regarding your performance with the tasks from the task sheet."
names(data)[12] <- "G01Q11_SQ003"
# LimeSurvey Field type: F
data[, 13] <- as.numeric(data[, 13])
attributes(data)$variable.labels[13] <- "[I enjoyed working with the agent.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree) regarding your performance with the tasks from the task sheet."
names(data)[13] <- "G01Q11_SQ004"
# LimeSurvey Field type: F
data[, 14] <- as.numeric(data[, 14])
attributes(data)$variable.labels[14] <- "[The agent was helpful in achieving the tasks.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree) regarding your performance with the tasks from the task sheet."
names(data)[14] <- "G01Q11_SQ006"
# LimeSurvey Field type: F
data[, 15] <- as.numeric(data[, 15])
attributes(data)$variable.labels[15] <- "[I enjoyed the instructions from the agent.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree) regarding your performance with the tasks from the task sheet."
names(data)[15] <- "G01Q11_SQ007"
# LimeSurvey Field type: F
data[, 16] <- as.numeric(data[, 16])
attributes(data)$variable.labels[16] <- "[The screenshots next to the agent were helpful in understanding what I need to do.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree) regarding your performance with the tasks from the task sheet."
names(data)[16] <- "G01Q11_SQ008"
# LimeSurvey Field type: F
data[, 17] <- as.numeric(data[, 17])
attributes(data)$variable.labels[17] <- "[The laser pointer of the agent was helpful in identifying the relevant UI element that I needed to interact with.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree) regarding your performance with the tasks from the task sheet."
names(data)[17] <- "G01Q11_SQ009"
# LimeSurvey Field type: F
data[, 18] <- as.numeric(data[, 18])
attributes(data)$variable.labels[18] <- "[OpenProject] How familliar were you with the two services before this evaluation? Answer on a scale of 1 (not famillar at all), 2 (somewhat familliar), 3 (familiar), 4 (very familliar), 5 (daily use)"
names(data)[18] <- "G02Q15_SQ001"
# LimeSurvey Field type: F
data[, 19] <- as.numeric(data[, 19])
attributes(data)$variable.labels[19] <- "[InvenTree] How familliar were you with the two services before this evaluation? Answer on a scale of 1 (not famillar at all), 2 (somewhat familliar), 3 (familiar), 4 (very familliar), 5 (daily use)"
names(data)[19] <- "G02Q15_SQ002"
# LimeSurvey Field type: A
data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "[Overall, I am satisfied with how easy it is to use OpenProject.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of OpenProject."
data[, 20] <- factor(data[, 20], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[20] <- "G01Q09_SQ001"
# LimeSurvey Field type: A
data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "[It was simple to use OpenProject.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of OpenProject."
data[, 21] <- factor(data[, 21], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[21] <- "G01Q09_SQ002"
# LimeSurvey Field type: A
data[, 22] <- as.character(data[, 22])
attributes(data)$variable.labels[22] <- "[I was able to complete the tasks and scenarios quickly using OpenProject.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of OpenProject."
data[, 22] <- factor(data[, 22], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[22] <- "G01Q09_SQ003"
# LimeSurvey Field type: A
data[, 23] <- as.character(data[, 23])
attributes(data)$variable.labels[23] <- "[I felt comfortable using OpenProject.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of OpenProject."
data[, 23] <- factor(data[, 23], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[23] <- "G01Q09_SQ004"
# LimeSurvey Field type: A
data[, 24] <- as.character(data[, 24])
attributes(data)$variable.labels[24] <- "[It was easy to learn to use OpenProject.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of OpenProject."
data[, 24] <- factor(data[, 24], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[24] <- "G01Q09_SQ005"
# LimeSurvey Field type: A
data[, 25] <- as.character(data[, 25])
attributes(data)$variable.labels[25] <- "[I believe I could become productive quickly using OpenProject.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of OpenProject."
data[, 25] <- factor(data[, 25], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[25] <- "G01Q09_SQ006"
# LimeSurvey Field type: A
data[, 26] <- as.character(data[, 26])
attributes(data)$variable.labels[26] <- "[OpenProject gave error messages that clearly told me how to fix problems.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of OpenProject."
data[, 26] <- factor(data[, 26], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[26] <- "G01Q09_SQ007"
# LimeSurvey Field type: A
data[, 27] <- as.character(data[, 27])
attributes(data)$variable.labels[27] <- "[Whenever I made a mistake using OpenProject, I could recover easily and quickly.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of OpenProject."
data[, 27] <- factor(data[, 27], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[27] <- "G01Q09_SQ008"
# LimeSurvey Field type: A
data[, 28] <- as.character(data[, 28])
attributes(data)$variable.labels[28] <- "[The information provided by the agent regarding OpenProject was clear.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of OpenProject."
data[, 28] <- factor(data[, 28], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[28] <- "G01Q09_SQ009"
# LimeSurvey Field type: A
data[, 29] <- as.character(data[, 29])
attributes(data)$variable.labels[29] <- "[It was easy to find the information I needed.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of OpenProject."
data[, 29] <- factor(data[, 29], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[29] <- "G01Q09_SQ010"
# LimeSurvey Field type: A
data[, 30] <- as.character(data[, 30])
attributes(data)$variable.labels[30] <- "[The information was effective in helping me complete the tasks and scenarios.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of OpenProject."
data[, 30] <- factor(data[, 30], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[30] <- "G01Q09_SQ011"
# LimeSurvey Field type: A
data[, 31] <- as.character(data[, 31])
attributes(data)$variable.labels[31] <- "[The organization of information on the system screens was clear.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of OpenProject."
data[, 31] <- factor(data[, 31], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[31] <- "G01Q09_SQ012"
# LimeSurvey Field type: A
data[, 32] <- as.character(data[, 32])
attributes(data)$variable.labels[32] <- "[The interface of OpenProject was pleasant.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of OpenProject."
data[, 32] <- factor(data[, 32], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[32] <- "G01Q09_SQ013"
# LimeSurvey Field type: A
data[, 33] <- as.character(data[, 33])
attributes(data)$variable.labels[33] <- "[I liked using the interface of OpenProject.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of OpenProject."
data[, 33] <- factor(data[, 33], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[33] <- "G01Q09_SQ014"
# LimeSurvey Field type: A
data[, 34] <- as.character(data[, 34])
attributes(data)$variable.labels[34] <- "[OpenProject has all the functions and capabilities I expect it to have.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of OpenProject."
data[, 34] <- factor(data[, 34], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[34] <- "G01Q09_SQ015"
# LimeSurvey Field type: A
data[, 35] <- as.character(data[, 35])
attributes(data)$variable.labels[35] <- "[Overall, I am satisfied with OpenProject.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of OpenProject."
data[, 35] <- factor(data[, 35], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[35] <- "G01Q09_SQ016"
# LimeSurvey Field type: A
data[, 36] <- as.character(data[, 36])
attributes(data)$variable.labels[36] <- "[Overall, I am satisfied with how easy it is to use InvenTree.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of InvenTree."
data[, 36] <- factor(data[, 36], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[36] <- "G01Q09Copy_SQ001"
# LimeSurvey Field type: A
data[, 37] <- as.character(data[, 37])
attributes(data)$variable.labels[37] <- "[It was simple to use InvenTree.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of InvenTree."
data[, 37] <- factor(data[, 37], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[37] <- "G01Q09Copy_SQ002"
# LimeSurvey Field type: A
data[, 38] <- as.character(data[, 38])
attributes(data)$variable.labels[38] <- "[I was able to complete the tasks and scenarios quickly using InvenTree.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of InvenTree."
data[, 38] <- factor(data[, 38], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[38] <- "G01Q09Copy_SQ003"
# LimeSurvey Field type: A
data[, 39] <- as.character(data[, 39])
attributes(data)$variable.labels[39] <- "[I felt comfortable using InvenTree.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of InvenTree."
data[, 39] <- factor(data[, 39], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[39] <- "G01Q09Copy_SQ004"
# LimeSurvey Field type: A
data[, 40] <- as.character(data[, 40])
attributes(data)$variable.labels[40] <- "[It was easy to learn to use InvenTree.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of InvenTree."
data[, 40] <- factor(data[, 40], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[40] <- "G01Q09Copy_SQ005"
# LimeSurvey Field type: A
data[, 41] <- as.character(data[, 41])
attributes(data)$variable.labels[41] <- "[I believe I could become productive quickly using InvenTree.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of InvenTree."
data[, 41] <- factor(data[, 41], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[41] <- "G01Q09Copy_SQ006"
# LimeSurvey Field type: A
data[, 42] <- as.character(data[, 42])
attributes(data)$variable.labels[42] <- "[InvenTree gave error messages that clearly told me how to fix problems.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of InvenTree."
data[, 42] <- factor(data[, 42], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[42] <- "G01Q09Copy_SQ007"
# LimeSurvey Field type: A
data[, 43] <- as.character(data[, 43])
attributes(data)$variable.labels[43] <- "[Whenever I made a mistake using InvenTree, I could recover easily and quickly.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of InvenTree."
data[, 43] <- factor(data[, 43], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[43] <- "G01Q09Copy_SQ008"
# LimeSurvey Field type: A
data[, 44] <- as.character(data[, 44])
attributes(data)$variable.labels[44] <- "[The information provided by the agent regarding InvenTree was clear.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of InvenTree."
data[, 44] <- factor(data[, 44], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[44] <- "G01Q09Copy_SQ009"
# LimeSurvey Field type: A
data[, 45] <- as.character(data[, 45])
attributes(data)$variable.labels[45] <- "[It was easy to find the information I needed.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of InvenTree."
data[, 45] <- factor(data[, 45], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[45] <- "G01Q09Copy_SQ010"
# LimeSurvey Field type: A
data[, 46] <- as.character(data[, 46])
attributes(data)$variable.labels[46] <- "[The information was effective in helping me complete the tasks and scenarios.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of InvenTree."
data[, 46] <- factor(data[, 46], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[46] <- "G01Q09Copy_SQ011"
# LimeSurvey Field type: A
data[, 47] <- as.character(data[, 47])
attributes(data)$variable.labels[47] <- "[The organization of information on the system screens was clear.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of InvenTree."
data[, 47] <- factor(data[, 47], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[47] <- "G01Q09Copy_SQ012"
# LimeSurvey Field type: A
data[, 48] <- as.character(data[, 48])
attributes(data)$variable.labels[48] <- "[The interface of InvenTree was pleasant.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of InvenTree."
data[, 48] <- factor(data[, 48], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[48] <- "G01Q09Copy_SQ013"
# LimeSurvey Field type: A
data[, 49] <- as.character(data[, 49])
attributes(data)$variable.labels[49] <- "[I liked using the interface of InvenTree.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of InvenTree."
data[, 49] <- factor(data[, 49], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[49] <- "G01Q09Copy_SQ014"
# LimeSurvey Field type: A
data[, 50] <- as.character(data[, 50])
attributes(data)$variable.labels[50] <- "[InvenTree has all the functions and capabilities I expect it to have.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of InvenTree."
data[, 50] <- factor(data[, 50], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[50] <- "G01Q09Copy_SQ015"
# LimeSurvey Field type: A
data[, 51] <- as.character(data[, 51])
attributes(data)$variable.labels[51] <- "[Overall, I am satisfied with InvenTree.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (strongly disagree), 3 (slightly disagree), 4 (neutral), 5 (slightly agree), 6 (strongly agree), 7 (completely agree) regarding the usability of InvenTree."
data[, 51] <- factor(data[, 51], levels=c("AO01","AO02","AO03","AO04","AO05","AO06","AO07"),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[51] <- "G01Q09Copy_SQ016"
# LimeSurvey Field type: F
data[, 52] <- as.numeric(data[, 52])
attributes(data)$variable.labels[52] <- "[I think that I would like to use the Gesture Agent frequently.]  Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (agree), 5 (completely agree) regarding the usability of the Gesture Agent interface (the interface you saw in your browser at gesture.meinberger.org)."
names(data)[52] <- "G01Q08_SQ001"
# LimeSurvey Field type: F
data[, 53] <- as.numeric(data[, 53])
attributes(data)$variable.labels[53] <- "[I found the Gesture Agent to be simple.]  Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (agree), 5 (completely agree) regarding the usability of the Gesture Agent interface (the interface you saw in your browser at gesture.meinberger.org)."
names(data)[53] <- "G01Q08_SQ002"
# LimeSurvey Field type: F
data[, 54] <- as.numeric(data[, 54])
attributes(data)$variable.labels[54] <- "[I thought the Gesture Agent was easy to use.]  Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (agree), 5 (completely agree) regarding the usability of the Gesture Agent interface (the interface you saw in your browser at gesture.meinberger.org)."
names(data)[54] <- "G01Q08_SQ003"
# LimeSurvey Field type: F
data[, 55] <- as.numeric(data[, 55])
attributes(data)$variable.labels[55] <- "[I think that I could use the Gesture Agent without the support of a technical person.]  Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (agree), 5 (completely agree) regarding the usability of the Gesture Agent interface (the interface you saw in your browser at gesture.meinberger.org)."
names(data)[55] <- "G01Q08_SQ004"
# LimeSurvey Field type: F
data[, 56] <- as.numeric(data[, 56])
attributes(data)$variable.labels[56] <- "[I found the various functions in the Gesture Agent were well integrated.]  Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (agree), 5 (completely agree) regarding the usability of the Gesture Agent interface (the interface you saw in your browser at gesture.meinberger.org)."
names(data)[56] <- "G01Q08_SQ005"
# LimeSurvey Field type: F
data[, 57] <- as.numeric(data[, 57])
attributes(data)$variable.labels[57] <- "[I thought there was a lot of consistency in the Gesture Agent.]  Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (agree), 5 (completely agree) regarding the usability of the Gesture Agent interface (the interface you saw in your browser at gesture.meinberger.org)."
names(data)[57] <- "G01Q08_SQ006"
# LimeSurvey Field type: F
data[, 58] <- as.numeric(data[, 58])
attributes(data)$variable.labels[58] <- "[I would imagine that most people would learn to use the Gesture Agent very quickly.]  Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (agree), 5 (completely agree) regarding the usability of the Gesture Agent interface (the interface you saw in your browser at gesture.meinberger.org)."
names(data)[58] <- "G01Q08_SQ007"
# LimeSurvey Field type: F
data[, 59] <- as.numeric(data[, 59])
attributes(data)$variable.labels[59] <- "[I found the Gesture Agent very intuitive.]  Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (agree), 5 (completely agree) regarding the usability of the Gesture Agent interface (the interface you saw in your browser at gesture.meinberger.org)."
names(data)[59] <- "G01Q08_SQ008"
# LimeSurvey Field type: F
data[, 60] <- as.numeric(data[, 60])
attributes(data)$variable.labels[60] <- "[I felt very confident using the Gesture Agent.]  Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (agree), 5 (completely agree) regarding the usability of the Gesture Agent interface (the interface you saw in your browser at gesture.meinberger.org)."
names(data)[60] <- "G01Q08_SQ009"
# LimeSurvey Field type: F
data[, 61] <- as.numeric(data[, 61])
attributes(data)$variable.labels[61] <- "[I needed to learn only a few things before I could get going with the Gesture Agent.]  Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (agree), 5 (completely agree) regarding the usability of the Gesture Agent interface (the interface you saw in your browser at gesture.meinberger.org)."
names(data)[61] <- "G01Q08_SQ010"
# LimeSurvey Field type: F
data[, 62] <- as.numeric(data[, 62])
attributes(data)$variable.labels[62] <- "[The gestures seemed natural to me.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree)"
names(data)[62] <- "G02Q05_SQ001"
# LimeSurvey Field type: F
data[, 63] <- as.numeric(data[, 63])
attributes(data)$variable.labels[63] <- "[The gestures helped me to understand what the agent said.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree)"
names(data)[63] <- "G02Q05_SQ002"
# LimeSurvey Field type: F
data[, 64] <- as.numeric(data[, 64])
attributes(data)$variable.labels[64] <- "[The gestures helped me to understand what the agent is currently doing.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree)"
names(data)[64] <- "G02Q05_SQ004"
# LimeSurvey Field type: F
data[, 65] <- as.numeric(data[, 65])
attributes(data)$variable.labels[65] <- "[I would prefer to use a virtual agent with gesture animations over a regular chat interface.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree)"
names(data)[65] <- "G02Q05_SQ003"
# LimeSurvey Field type: F
data[, 66] <- as.numeric(data[, 66])
attributes(data)$variable.labels[66] <- "[The gestures did not distract me from what the agent said.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree)"
names(data)[66] <- "G02Q05_SQ005"
# LimeSurvey Field type: F
data[, 67] <- as.numeric(data[, 67])
attributes(data)$variable.labels[67] <- "[I paid active attention to the gestures.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree)"
names(data)[67] <- "G02Q05_SQ006"
# LimeSurvey Field type: F
data[, 68] <- as.numeric(data[, 68])
attributes(data)$variable.labels[68] <- "[The agent seemed very human to me.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree)"
names(data)[68] <- "G02Q05_SQ007"
# LimeSurvey Field type: F
data[, 69] <- as.numeric(data[, 69])
attributes(data)$variable.labels[69] <- "[Thumbs Up] Please mark all kinds of gestures you saw during the usage of the Gesture Agent."
data[, 69] <- factor(data[, 69], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[69] <- "G01Q07_SQ001"
# LimeSurvey Field type: F
data[, 70] <- as.numeric(data[, 70])
attributes(data)$variable.labels[70] <- "[Thumbs Down] Please mark all kinds of gestures you saw during the usage of the Gesture Agent."
data[, 70] <- factor(data[, 70], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[70] <- "G01Q07_SQ002"
# LimeSurvey Field type: F
data[, 71] <- as.numeric(data[, 71])
attributes(data)$variable.labels[71] <- "[Wave] Please mark all kinds of gestures you saw during the usage of the Gesture Agent."
data[, 71] <- factor(data[, 71], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[71] <- "G01Q07_SQ003"
# LimeSurvey Field type: F
data[, 72] <- as.numeric(data[, 72])
attributes(data)$variable.labels[72] <- "[Finished (A sort of scissor cutting motion with both hands)] Please mark all kinds of gestures you saw during the usage of the Gesture Agent."
data[, 72] <- factor(data[, 72], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[72] <- "G01Q07_SQ004"
# LimeSurvey Field type: F
data[, 73] <- as.numeric(data[, 73])
attributes(data)$variable.labels[73] <- "[Raised Fist] Please mark all kinds of gestures you saw during the usage of the Gesture Agent."
data[, 73] <- factor(data[, 73], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[73] <- "G01Q07_SQ006"
# LimeSurvey Field type: F
data[, 74] <- as.numeric(data[, 74])
attributes(data)$variable.labels[74] <- "[Thinking] Please mark all kinds of gestures you saw during the usage of the Gesture Agent."
data[, 74] <- factor(data[, 74], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[74] <- "G01Q07_SQ005"
# LimeSurvey Field type: A
data[, 75] <- as.character(data[, 75])
attributes(data)$variable.labels[75] <- "[Other] Please mark all kinds of gestures you saw during the usage of the Gesture Agent."
names(data)[75] <- "G01Q07_other"
# LimeSurvey Field type: F
data[, 76] <- as.numeric(data[, 76])
attributes(data)$variable.labels[76] <- "[I use LLMs often.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree). The term LLM occurring in the following questions refers to artificial intelligence, like ChatGPT, Gemini, or DeepSeek. This communication with one can happen through a chat interface, or it can be more obfuscated, like in an LLM-based translation software. If you are unsure if the application you are thinking about uses an LLM, assume that it does not.     "
names(data)[76] <- "G02Q06_SQ001"
# LimeSurvey Field type: F
data[, 77] <- as.numeric(data[, 77])
attributes(data)$variable.labels[77] <- "[LLMs help me accomplish many tasks.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree). The term LLM occurring in the following questions refers to artificial intelligence, like ChatGPT, Gemini, or DeepSeek. This communication with one can happen through a chat interface, or it can be more obfuscated, like in an LLM-based translation software. If you are unsure if the application you are thinking about uses an LLM, assume that it does not.     "
names(data)[77] <- "G02Q06_SQ002"
# LimeSurvey Field type: F
data[, 78] <- as.numeric(data[, 78])
attributes(data)$variable.labels[78] <- "[I have trust in the answers of the LLM of my choice or LLMs in general.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree). The term LLM occurring in the following questions refers to artificial intelligence, like ChatGPT, Gemini, or DeepSeek. This communication with one can happen through a chat interface, or it can be more obfuscated, like in an LLM-based translation software. If you are unsure if the application you are thinking about uses an LLM, assume that it does not.     "
names(data)[78] <- "G02Q06_SQ003"
# LimeSurvey Field type: F
data[, 79] <- as.numeric(data[, 79])
attributes(data)$variable.labels[79] <- "[I use LLMs to learn how to use new software.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree). The term LLM occurring in the following questions refers to artificial intelligence, like ChatGPT, Gemini, or DeepSeek. This communication with one can happen through a chat interface, or it can be more obfuscated, like in an LLM-based translation software. If you are unsure if the application you are thinking about uses an LLM, assume that it does not.     "
names(data)[79] <- "G02Q06_SQ004"
# LimeSurvey Field type: F
data[, 80] <- as.numeric(data[, 80])
attributes(data)$variable.labels[80] <- "[I use LLMs to summarize long text documents.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree). The term LLM occurring in the following questions refers to artificial intelligence, like ChatGPT, Gemini, or DeepSeek. This communication with one can happen through a chat interface, or it can be more obfuscated, like in an LLM-based translation software. If you are unsure if the application you are thinking about uses an LLM, assume that it does not.     "
names(data)[80] <- "G02Q06_SQ005"
# LimeSurvey Field type: F
data[, 81] <- as.numeric(data[, 81])
attributes(data)$variable.labels[81] <- "[I use LLMs to find specific passages in long text documents.] Please select the most fitting rating on the scale of 1 (completely disagree), 2 (somewhat disagree), 3 (neutral), 4 (somewhat agree), 5 (completely agree). The term LLM occurring in the following questions refers to artificial intelligence, like ChatGPT, Gemini, or DeepSeek. This communication with one can happen through a chat interface, or it can be more obfuscated, like in an LLM-based translation software. If you are unsure if the application you are thinking about uses an LLM, assume that it does not.     "
names(data)[81] <- "G02Q06_SQ006"
# LimeSurvey Field type: A
data[, 82] <- as.character(data[, 82])
attributes(data)$variable.labels[82] <- "How do you currently describe your gender identity?"
data[, 82] <- factor(data[, 82], levels=c("AO01"),labels=c("I prefer not to answer."))
names(data)[82] <- "G02Q01"
# LimeSurvey Field type: A
data[, 83] <- as.character(data[, 83])
attributes(data)$variable.labels[83] <- "[Other] How do you currently describe your gender identity?"
names(data)[83] <- "G02Q01_other"
# LimeSurvey Field type: F
data[, 84] <- as.numeric(data[, 84])
attributes(data)$variable.labels[84] <- "What is your age in years?"
names(data)[84] <- "G00Q02"
# LimeSurvey Field type: A
data[, 85] <- as.character(data[, 85])
attributes(data)$variable.labels[85] <- "What categories describe your education? Select all that apply to you."
data[, 85] <- factor(data[, 85], levels=c("AO01","AO02","AO03","AO04","AO05","AO06"),labels=c("Some high school", "High school diploma or equivalent (Abitur)", "Vocational training (Ausbildung)", "Bachelor’s degree", "Master’s degree", "Doctorate degree (PhD)"))
names(data)[85] <- "G00Q03"
# LimeSurvey Field type: A
data[, 86] <- as.character(data[, 86])
attributes(data)$variable.labels[86] <- "[Other] What categories describe your education? Select all that apply to you."
names(data)[86] <- "G00Q03_other"
# LimeSurvey Field type: A
data[, 87] <- as.character(data[, 87])
attributes(data)$variable.labels[87] <- "In which country did you spend the majority of your life?"
names(data)[87] <- "G00Q04"
# LimeSurvey Field type: A
data[, 88] <- as.character(data[, 88])
attributes(data)$variable.labels[88] <- "What did you like about the Gesture Agent system?"
names(data)[88] <- "G06Q12"
# LimeSurvey Field type: A
data[, 89] <- as.character(data[, 89])
attributes(data)$variable.labels[89] <- "What did you not like about the Gesture Agent system?"
names(data)[89] <- "G01Q13"
# LimeSurvey Field type: A
data[, 90] <- as.character(data[, 90])
attributes(data)$variable.labels[90] <- "Do you have any suggestions or comments?"
names(data)[90] <- "G06Q14"
