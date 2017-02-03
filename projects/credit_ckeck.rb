require 'pry'
class CreditCheck
attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number
  end

  def credit_check
    card_numbers_int = card_number.reverse.chars.map {|num| num.to_i}
    doubled_odds =  card_numbers_int.each_with_index.map do |number, index|
      if index.odd?
        number = number * 2
        if number > 9
          number -= 9
        else
          number = number
        end
      else
        number = number
      end
    end
    card_number_sum = doubled_odds.reduce(:+)
      if (card_number_sum % 10) == 0
        valid = true
        puts "The number is valid!"
      else
        valid = false
        puts "The number is invalid!"
      end
  end
end
card_number = CreditCheck.new("4929735477250543")
card_number.credit_check
