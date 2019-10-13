def roll_call_dwarves(array)
  array.each_with_index {|dwarf, index| puts "#{index+1}. #{dwarf}"}
end

def summon_captain_planet(array)
  array.map {|call| "#{call.capitalize}!"}
end

def long_planeteer_calls(array)
  array.any? {|call| call.length > 4}
  #any? checks to see if there are calls bigger than 4 returns true if there is at least one 
  #it goes to false if all calls are small
end

def find_the_cheese(array)
  cheese_types = ["cheddar", "gouda", "camembert"]
  
  #array.find do |cheese| 
    #if cheese_types.include?(cheese)
    # this if statement uses include? o check if the element in our array is included in the cheese_types array so it compares the two arrays by running each cheese on the cheese_types array
  cheese_types.find do |cheese| 
    if array.include?(cheese)
    # if we say array include cheese from the cheese_types makes more sense, asking if the array includes any of the cheese types
      return cheese
    end
  end
end
