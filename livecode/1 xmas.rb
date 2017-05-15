require 'Date'

def days_before_christmas
  today = Date.today
  xmas = Date.new(2017,12,25)
  remaining_days = xmas - today
  return remaining_days.to_i
end

puts "Il reste #{days_before_christmas} avant Noël"
