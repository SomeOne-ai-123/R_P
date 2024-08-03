# Function to simulate the checkout process
checkout <- function() {
  # Define an empty list to store products
  products <- list()
  
  # Input the number of products in the cart
  num_products <- as.integer(readline(prompt="Enter the number of products in the shopping cart: "))
  
  # Input the product details
  for (i in 1:num_products) {
    cat("\nProduct", i, "\n")
    name <- readline(prompt="Enter product name: ")
    price <- as.numeric(readline(prompt="Enter product price: "))
    quantity <- as.integer(readline(prompt="Enter product quantity: "))
    
    # Create a product dictionary and append it to the products list
    product <- list(name=name, price=price, quantity=quantity)
    products <- append(products, list(product))
  }
  
  # Initialize variables for total cost and tax rate
  total_cost_before_tax <- 0
  tax_rate <- 0.08
  
  # Print the detailed receipt header
  cat("\nDetailed Receipt:\n")
  cat("-----------------------------------------------------\n")
  cat(sprintf("%-20s %-10s %-10s %-10s\n", "Product Name", "Quantity", "Price", "Subtotal"))
  cat("-----------------------------------------------------\n")
  
  # Calculate subtotal for each item and the total cost before tax
  for (product in products) {
    name <- product$name
    price <- product$price
    quantity <- product$quantity
    subtotal <- price * quantity
    total_cost_before_tax <- total_cost_before_tax + subtotal
    
    # Print product details in the receipt
    cat(sprintf("%-20s %-10d %-10.2f %-10.2f\n", name, quantity, price, subtotal))
  }
  
  # Calculate the tax amount and final total cost
  tax_amount <- total_cost_before_tax * tax_rate
  final_total_cost <- total_cost_before_tax + tax_amount
  
  # Print the summary of the receipt
  cat("-----------------------------------------------------\n")
  cat(sprintf("%-20s %-30.2f\n", "Total Cost (before tax):", total_cost_before_tax))
  cat(sprintf("%-20s %-30.2f\n", "Tax Amount:", tax_amount))
  cat(sprintf("%-20s %-30.2f\n", "Final Total Cost:", final_total_cost))
  cat("-----------------------------------------------------\n")
}

# Run the checkout function to simulate the process
checkout()

