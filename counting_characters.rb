class Counter

  def count(input)
    if input == ""
      return 0
    else
      finished_array = sorter(hashify(input))
      printer(finished_array)
    end


  end

  def hashify(input)
    word = input.chars
    count_per_element = {}
    word.each do |element|
      pair = word.select do |character|
        element == character
      end
      count_per_element[pair[0]] = pair.size
    end
    return count_per_element

  end

  def sorter(hash)

    new = hash.sort_by do |character, count|
      count
    end
    new.reverse!


  end


  def printer (array)

    total = []
    array.size.times do |index|
      total << "#{array[index][0]}: #{array[index][1]}"
    end

    return total.join("\n")
  end

end

puts Counter.new.count("I really want to work for Wingspan")