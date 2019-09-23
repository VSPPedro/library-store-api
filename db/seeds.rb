puts "Creating 5.000 books...\n"
5_000.times do |i|
  FactoryBot.create(:book)
  print '.' if i % 1000 == 0
end
puts