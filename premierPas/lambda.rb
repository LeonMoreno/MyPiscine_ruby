# Lambdas are defined using the following syntax:
# lambda { |param| block }

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda { |x| x.is_a? Symbol }

symbols = my_array.select(&symbol_filter)

puts symbols

puts "----------------------------"

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda { |x| x.to_sym }

symbols = strings.collect(&symbolize)
print symbols

puts "----------------------------"

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!

first_half = lambda { |k, v| v[0] < "M" }

a_to_m = crew.select(&first_half)

puts a_to_m