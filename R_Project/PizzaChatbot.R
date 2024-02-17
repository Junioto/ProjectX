## PIZZA CHATBOT
pizza_id <- 1:4
pizza_name <- c("Margherita Classic", "Spicy Hawaiian Delight", "BBQ Pulled Pork Bonanz", "Four Cheese Fantasia")
pizza_price <- c(150, 180, 190, 200)
pizza_menu <- data.frame(ID = pizza_id,
                         Pizza = pizza_name,
                         Price = pizza_price)
crust_id <- 1:3
crust_name <- c("Pan", "Crispy Thin", "Extrem Cheese")
crust_price <- c(0, 20, 100)
crust_menu <- data.frame(ID = crust_id,
                         Crust = crust_name,
                         Price = crust_price)
size_id <- 1:3
size_name <- c("S", "M", "L")
size_price <- c(0, 50, 100)
size_menu <- data.frame(ID = size_id,
                        Size = size_name,
                        Prize = size_price)
add_id <- 1:4
add_name <- c("No add-on", "Mozzarella Cheese", "Prawn", "Pineapple")
add_price <- c(0, 60, 80, 50)
add_more_ingredient <- data.frame(ID = add_id,
                             Ingredient = add_name,
                             Price = add_price)


# chatbot
chat_order_pizza <- function(){
  print("Welcome to JR PiZZA")
  print("What's your name? ")
  user_name <- readLines("stdin", n=1)
  print(paste("Hi", user_name, "! Let's start your order."))
  print("Please press 1 to see menu")
while(TRUE){
  user_press <- readLines("stdin", n=1)
  if(user_press == 1){
    print(pizza_menu)
    break
  }else{
    print("Sorry, please press 1 to see menu")
  }
}
  print("What would you like to order?")
  while(TRUE){
    user_pizza <- as.numeric(readLines("stdin", n=1))
    if(user_pizza %in% pizza_id){
      print(paste("You chose ", pizza_menu$Pizza[user_pizza]))
      print("What crust would you like?")
      print(crust_menu)  
      break
      }else{
        print("Sorry, we don't understand. Please try again")
      }
  }
  while(TRUE){
    user_crust <- as.numeric(readLines("stdin", n=1))
    if(user_crust %in% crust_id){
    print(paste("You chose ", crust_menu$Crust[user_crust]))
    print("What size would you like?")
    print(size_menu)
    break
    }else{
      print("Sorry,please try crust again")
    }
  }
  while(TRUE){
    user_size <- as.numeric(readLines("stdin", n=1))
    if(user_size %in% size_id){
      print(paste("You chose ", size_menu$Size[user_size]))
      print("What add-on would you like?")
      print(add_more_ingre)
      break      
    }else{
    print("Sorry,try size again")
  }
  }
  while(TRUE){
    user_add <- as.numeric(readLines("stdin", n=1))
    if(user_add %in% add_id){
      print(paste("You chose ", add_more_ingre$Ingredient[user_add]))
      total_price <- pizza_menu$Price[user_pizza] + crust_menu$Price[user_crust]+                                     size_menu$Prize[user_size] + add_more_ingre$Price[user_add]
      print(paste("Your total price is ", total_price, "Baht"))
      break
    }else{
    print("Sorry,try add on again")
  }
  }
  print("Please enter your money")
  while(TRUE){
    user_payment <- as.numeric(readLines("stdin", n=1))
    if(user_payment == total_price){
      print("Thank you for your order")
    }else if(user_payment < total_price){
    print("Sorry, please add more money")
    }else if (user_payment > total_price){
      user_payment_change <- user_payment - total_price
      print(paste("Thank you for your order, your change is",user_payment_change,"Baht"))
      break
    }
  }
}
chat_order_pizza()
