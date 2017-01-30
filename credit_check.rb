# require 'pry'
# binding.pry

def credit_check(card_number)
  card_number = "4929735477250543"
  valid = false
#validate credit card number
#reverse order of numbers to start at the 2 rightmost number in original order
  card_new_order = card_number.reverse.chars
#convert string chars to integer
  card_numbers_int = card_new_order.map {|number| number.to_i}
#pull out values that need to be doubled
  card_numbers_to_double = card_numbers_int.values_at(1, 3, 5, 7, 9, 11, 13, 15)
#create 2nd array for non-doubled values
  card_numbers_keep = card_numbers_int.values_at(0, 2, 4, 6, 8, 10, 12, 14)
#multiply numbers in card_numbers_to_double by 2
  doubled_card_numbers = card_numbers_to_double.map {|number| number * 2}
#if the sum of any number is > 10 then separate the number into 2 separate
  doubled_card_numbers.map |number|
  if number > 9
    number - 9
  end
#sum the numbers in doubled_card_numbers and card_numbers_keep
  card_number_sum = doubled_card_numbers.sum + card_numbers_keep.sum
#if card_number_sum modulo 10 = 0 then valid card
  if card_number_sum % 10 == 0
    valid = true
    puts "The number is valid!"
  else
    valid = false
    puts "The number is invalid!"
  end
end
