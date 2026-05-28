require 'date'

def math_delivery(send_day, time_to_deliver)
  date = Date.parse(send_day)
  dias_uteis = 0-----

    while
    dias_uteis < time_to_deliver
    date += 1
    dias_uteis += 1 unless [0,6].include?(date.wday)
  end
  date
end

send_day = "2023-11-01"
puts "type in how many days the package will arrive"
time_to_deliver =
gets.chomp.to_i

estimate_delivery = math_delivery(send_day, time_to_deliver)

puts "the estimate day to deliver is: #{estimate_delivery}"