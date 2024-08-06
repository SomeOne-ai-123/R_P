# Load necessary package
library(dplyr)

# Create a data frame to store student information
students <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Eva"),
  Math_Score = c(85, 75, 90, 65, 78),
  Science_Score = c(88, 80, 85, 70, 90),
  History_Score = c(92, 70, 78, 80, 85),
  Attendance = c(95, 80, 75, 60, 85)
)

# Function to calculate the average scores for each student
calculate_average_scores <- function(data) {
  data$Average_Score <- rowMeans(data[, 2:4])
  return(data)
}

# Function to identify students with attendance below a certain threshold
identify_low_attendance <- function(data, threshold = 75) {
  low_attendance_students <- data[data$Attendance < threshold, ]
  return(low_attendance_students)
}

# Function to generate a report with student names, average scores, and attendance status
generate_report <- function(data, attendance_threshold = 75) {
  data <- calculate_average_scores(data)
  low_attendance <- identify_low_attendance(data, attendance_threshold)
  data$Attendance_Status <- ifelse(data$Attendance < attendance_threshold, "Low", "Satisfactory")
  return(data)
}

# Main program
students <- calculate_average_scores(students)
low_attendance_students <- identify_low_attendance(students, 75)
report <- generate_report(students, 75)

# Print results
print("Student Data with Average Scores:")
print(students)

print("Students with Low Attendance:")
print(low_attendance_students)

print("Generated Report:")
print(report)
