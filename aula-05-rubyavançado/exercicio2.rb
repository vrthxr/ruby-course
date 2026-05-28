puts "type the day"
day =
gets.chomp.to_i
puts "type the month" 
month =
gets.chomp.to_i
puts "type the year"
year =
gets.chomp.to_i

# puts "#{day} é o dia #{month} é o mes #{year} é o ano antes da formatação - debug"


day_formatted = format("%02d", day)
month_formatted = format("%02d", month)
year_formatted = format("%04d", year)


# puts "#{day_formatted} é o dia #{month_formatted} é o mes #{year_formatted} é o ano depois da formatação - debug"

date = "#{day_formatted}/#{month_formatted}/#{year_formatted}"
if date.match?(/\A\d{2}\/\d{2}\/\d{4}\z/)
  puts "correct format: #{year_formatted}-#{month_formatted}-#{day_formatted}"
else
  puts "wrong format"
end

