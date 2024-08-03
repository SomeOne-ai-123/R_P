# Initial queue
queue <- c("Steve", "Russell", "Alison", "Liam")

# Barry arrives
queue <- c(queue, "Barry")

# Steve is served
queue <- queue[-1]

# Pam takes her way to the front with one item
queue <- c("Pam", queue)

# Barry gets impatient and leaves
queue <- queue[queue != "Barry"]

# Alison gets impatient and leaves
queue <- queue[queue != "Alison"]

# Find the position of Russell in the queue
position_of_russell <- which(queue == "Russell")

