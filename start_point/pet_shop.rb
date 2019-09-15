# ----------------- 1 ----------------------

def pet_shop_name(name_of_pet_shop)
  name_of_pet_shop = @pet_shop[:name]
  return name_of_pet_shop
end


# ----------------- 2 & 3 & 4 ----------------------

def total_cash(pet_shop_total_cash)
  pet_shop_total_cash = @pet_shop[:admin][:total_cash]
  return pet_shop_total_cash
end

def add_or_remove_cash(pet_shop_total_cash, amount)
  if amount > 0
    return @pet_shop[:admin][:total_cash] += amount
  else
    return @pet_shop[:admin][:total_cash] += amount
  end
end


# ----------------- 5 & 6 ----------------------

def pets_sold(pet_sold)
  pet_sold = @pet_shop[:admin][:pets_sold]
  return pet_sold
end


def pet_sold(pets_sold)
  pet_sold = @pet_shop[:admin][:pets_sold]
  return pet_sold
end

def increase_pets_sold(pets_sold, how_many_sold)
  return @pet_shop[:admin][:pets_sold] += how_many_sold
end

# ----------------- 7 & 13 ----------------------

def stock_count(pet_shop_stock)
  pet_shop_stock = @pet_shop[:pets].length()
  return pet_shop_stock
end

def add_pet_to_stock(pet_shop_stock, new_pet)
  pet_shop_stock[:pets] << new_pet
end


# ----------------- 8 & 9 ----------------------
# for some reason this comes back with 3 british shorthair and when used for the dalmation the array shows 3 still
# def pets_by_breed(pet_shop_hash, input_breed_name)
# p pet_shop_hash[:pets][0][:breed].include?(input_breed_name)
# p pet_shop_hash[:pets][0][:breed].count(input_breed_name)
#   breed_counter = []
#   for breed_name in pet_shop_hash
#       breed_counter.push(input_breed_name)
#   end
#   p breed_counter
#   return breed_counter
# end

# def pets_by_breed(pet_shop_hash, input_breed_name)
# p pet_shop_hash[:pets][0][:breed].include?(input_breed_name)
# p pet_shop_hash[:pets][0][:breed].count(input_breed_name)
  # breed_counter = []
  #   if pet_shop_hash.count(input_breed_name)
  #     breed_counter.push(input_breed_name)
  #   end
  # p breed_counter
  # return breed_counter
# end

# def pets_by_breed(pet_shop_hash, breed)
#   breed_counter = []
#   for breed_name in pet_shop_hash
#       breed_counter << breed -= 1 if breed == breed
#   end
#   p breed_counter
#   return breed_counter
# end


# ----------------- 10 & 11 & 12 ---------------------

# def find_pet_by_name(pet_shop, name)
#     pet = pet_shop[:pets][3]
  # p pet
#   name_array = []
#   for pet_name in pet_shop[:pets]
#     name_array.push(name) if pet_name == name
#   end
#   p name_array
#   return name_array
# end

def find_pet_by_name(pet_shop, name)

  # pet_shop[:pets][3].each { |x| puts "#{x}"}
  # pet_shop[:pets][3].each do | key, value|
  #     puts "#{key}: #{value}"
  # end
end
# def find_pet_by_name(pet_shop, name)
#     pet_shop_hash = pet_shop[:pets]
#    return pet_shop_hash.include?(name)
# end

# def find_pet_by_name(pet_shop, name)
#   pets = pet_shop[:pets][3]
#     for pet in pets
#       if pet == name
#         return pets
#       end
#     end
#     return nil
# end


# def find_pet_by_name(pet_shop, name)
#   p name
#   for pet in pet_shop[:pets][:name]
#     if pet == name
#       return name
#     end
#   end
#   return nil
# end

#
# def remove_pet_by_name(pet_shop_hash, input_name)
#   pet_shop_hash[:pets].delete(input_name)
#   p [:pets]
#   return[:pets]
# end


# ----------------- 14 & 15 ---------------------

def customer_cash(customers_cash)
  return customers_cash[:cash]
end

def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end


# ----------------- 16 ---------------------

def customer_pet_count(customer)
  return customer[:pets].length()
end


# ----------------- 17----------------------

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
  return customer
end


#-------------- OPTIONAL -------------------------
#--------------- 1 & 2 & 3 -----------------------

def customer_can_afford_pet(customer, pet)
  for money in customer
    if customer[:cash] >= pet[:price]
      return true
    end
  end
  return false
end


#------------------- 4 --------------------------
# not the correct way to do it as its not searching for the pet and just using the exact index value for arthur, but
# completed it this way just to get an undeerstanding of the code, will need
# to find how to search specificialy for pet name
def sell_pet_to_customer(pet_shop, pet, customer)
  if customer_pet_count(customer) == 0
    customer[:pets] << pet
    pet_shop[:admin][:pets_sold] += 1
    customer[:cash] -= pet_shop[:pets][3][:price]
    pet_shop[:admin][:total_cash] += pet_shop[:pets][3][:price]
    return customer[:pets].length()
    return pet_shop[:admin][:pets_sold]
    return customer[:cash]
    return pet_shop[:admin][:total_cash]
  end
end


#------------------- 5 --------------------------
