puts('Welcome to HungryApp!')

appetizers = ['nachos', 'mozzarella', 'buffalo wings']
entrees    = ['hamburger', 'steak sandwich', 'chicken salad']
desserts   = ['apple pie', 'tiramisu', 'ice cream sundae']

def ask_customer_for_order(food_items)
  food_items.each do |food_item|
    puts(food_item)
  end
  order = gets().chomp()
  if food_items.include?(order)
  else
    puts('That is not on the menu!')
  end
  return order
end

customer_order = []

puts('What would you like for your appetizer?')
customer_order << ask_customer_for_order(appetizers)

puts('What would you like for your entree?')
customer_order << ask_customer_for_order(entrees)

puts('What would you like for your dessert?')
customer_order << ask_customer_for_order(desserts)

print('Your order: ')
customer_order.each do |food_item|
  print(' ' + food_item)
end
