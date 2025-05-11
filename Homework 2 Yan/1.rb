def most_frequent_elements(array)
  frequency = Hash.new(0)

  array.each do |element|
    frequency[element] += 1
  end

  max_frequency = frequency.values.max

  most_frequent = frequency.select { |_, count| count == max_frequency }.keys

  most_frequent
end

# Тестові приклади
arrays = [
  [1, 3, 1, 3, 2, 1],
  [4, 4, 5, 6, 6, 5],
  [],
  [7],
  [9, 9, 8, 8, 7],
  [3, 1, 2, 3, 2, 4, 1, 3, 1, 2, 3, 2, 2, 3, 3, 1, 1, 3, 2, 1, 3, 3, 2, 2, 2, 2, 1, 1, 2, 2, 2]
]

arrays.each do |arr|
  result = most_frequent_elements(arr)
  puts "Array: #{arr.inspect}"
  if result.empty?
    puts "Most frequent elements: None (array is empty)"
  else
    puts "Most frequent elements: #{result.join(', ')}"
  end
  puts "-" * 40
end
