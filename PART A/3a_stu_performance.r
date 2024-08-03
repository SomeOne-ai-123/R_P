subject<- c("MFC", "DAA", "MCES", "OS", "BFE", "UHV")

marks <- c(91, 73, 65, 45, 54, 32)

avg<- mean(marks)

barplot(marks, names.arg = subject, col = "skyblue",main = "Student's Performance in 3rd Semester CSE", xlab = "Subjects", ylab = "Marks ")

pie(marks, labels = subject, col = rainbow(length(marks)), main = "Student's Performance in 3 rd Semester CSE")

cat("Average Marks:", avg, "\n")

cat("Qualitative Performance:\n")

for (i in 1:length(marks)) {
  cat(subject[i], ":", 
      ifelse(marks[i] >= avg, "Good", "Needs Improvement"), "\n")
}
