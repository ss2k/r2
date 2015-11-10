
COLORS = %w(red blue green yellow black)
CATEGORIES = %w(book toy music video gadget)

def rand_int(from, to)
  rand(from..to).to_i
end

def rand_price(from, to)
  rand(from..to).round(2)
end

def rand_time(from, to=Time.now)
  Time.at(rand(from.to_f..to.to_f))
end

2500.times { Item.create(name: "Item Number #{rand_int(1, 25000)}", color: COLORS.sample, price: rand_price(10, 1000), built_in: rand_time(30.days.ago), category: CATEGORIES.sample)
 }