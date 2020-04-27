# 1. Return an array of each Student’s full name, upper-cased

students = [
  {
      first_name: "Maram",
      last_name: "AlFawaz"
  },
  {
      first_name: "Abdulaziz",
      last_name: "Alsaubhi",
  },
  {
      first_name: "Ghadeer",
      last_name: "Abdulaziz",
  }
]

upper_case_full_names = students.map{|x| x.values.join(" ").upcase }.inspect
puts upper_case_full_names

puts "--------------------"

# 2. Find the first order for each user
users = [
  {
      name: "Hamzah",
      orders: [
          {
              description: "a book about bees"
          }
      ]
  },
  {
      name: "Edress",
      orders: [
          {
              description: "Kingdom hearts"
          },
          {
              description: "Nintendo 3DS"
          }
      ]
  },
  {
      name: "Ziad",
      orders: [
          {
              description: "a Razer Blade"
          },
          {
              description: "Gigabyte arous mechanical keyboard"
          },
          {
              description: "sleeping bean bag"
          },
          {
              description: "a firendly giant lizard"
          }
      ]
  }
]

first_order_for_each_user = users.map{|order| order[:orders][0] }

puts first_order_for_each_user

puts "--------------------"

# 3. Find the average amount spent on coffee, per transaction, for each person

people = [
  {
      name: "Jawaher",
      transactions: [
          {
              type: "COFFEE",
              amount: 7.43
          },
          {
              type: "TACOS",
              amount: 14.65
          },
          {
              type: "COFFEE",
              amount: 4.43
          }
      ]
  },
  {
      name: "Bashayer",
      transactions: [
          {
              type: "BIKES",
              amount: 800.00
          },
          {
              type: "TACOS",
              amount: 14.65
          },
          {
              type: "COFFEE",
              amount: 4.43
          }
      ]
  },
  {
      name: "Abdulhameed",
      transactions: [
          {
              type: "COFFEE",
              amount: 7.43
          },
          {
              type: "COFFEE",
              amount: 100.00
          },
          {
              type: "COFFEE",
              amount: 4.43
          }
      ]
  }
]

coffee_average_per_person = []
sum = 0
i=0

people.each do |peopl|

peopl[:transactions].each do |trans| 
    i+=1 
    sum+= trans[:amount]
end
average = sum / i
coffee_average_per_person.push(peopl[:name], average)
end

puts coffee_average_per_person
puts "--------------------"

# 4. Find the most expensive product for each store, with the store name:

stores = [
  {
      store_name: "Virgin",
      products: [
          {
              description: "PS4",
              price: 9384.33
          },
          {
              description: "Pen",
              price: 345.54
          }
      ]
  },
  {
      store_name: "Manuel",
      products: [
          {
              description: "Bread",
              price: 654.44
          },
          {
              description: "Cheese",
              price: 323.43
          }
      ]
  },
  {
      store_name: "Noon",
      products: [
          {
              description: "iPhone",
              price: 345.43
          },
          {
              description: "TV",
              price: 899.33
          }
      ]
  }
]
most_expensive_products_by_store = []

 stores.each do |store|
    exp_price = 0
    item = ""
    store[:products].each do |product| 
        if product[:price] > exp_price
            exp_price = product[:price]
            item = product[:description]
        end
    end
    most_expensive_products_by_store.push({store_name:store[:store_name]},{type: item, exp_price: exp_price})
 end
 
puts most_expensive_products_by_store
puts "--------------------"


# Bouns
students_list = []


loop do
    puts "Add a student:"
    student_name = gets.chomp
    students_list.push(student_name) 

    puts "Do you want to continue ? (y/n)"
    user_choice = gets.chomp


    if user_choice == "n"
        print students_list
         n = false
         break
    end

end

