#format reference
# %b month name abrev (jan)
# %B month name full (january)
# %d month day (1..31)
# %j year day (1..366)
# %m month to num (1..12)
# %w week to num (0..6) (dom..sab)
# %y year in 2 dig (21)
# %Y year in 4 dig (2021)


someday = Time.new(2025, 3, 31)

puts someday
puts someday.strftime("%Y-%m-%d")
puts someday.strftime("%m-%d-%Y")
puts someday.strftime("%d-%m-%Y")