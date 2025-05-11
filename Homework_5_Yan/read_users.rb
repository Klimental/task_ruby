require 'json'

file = File.read('users.json')

users = JSON.parse(file)

puts "Users:"
users.each do |user|
  puts "Name: #{user['name']}, Age: #{user['age']}"
end

if users.any?
  total_age = users.sum { |user| user['age'] }
  average_age = total_age.to_f / users.size
  puts "\nAverage Age: #{average_age.round(2)}"
else
  puts "\nNo users found."
end
