dial_book = {
  'newyork' => '212',
  'newbrunswick' => '732',
  'edison' => '908',
  'plainsboro' => '609',
  'sanfrancisco' => '301',
  'miami' => '305',
  'paloalto' => '650',
  'evanston' => '847',
  'orlando' => '407',
  'lancaster' => '717',
  'losangeles' => '562'
}

def get_city_names(hash)
  hash.keys
end

def get_area_code(hash, key)
  hash[key]
end

loop do
  puts 'Do you want to lookup an area code based on a city name? (Y/N)'
  answer = gets.chomp.downcase
  break if answer != 'y'
  puts "Which city do you want the area code for?"  
  puts get_city_names(dial_book)
  puts "Enter your chosen city"
  city = gets.chomp
  if dial_book.include?(city)
    puts "The are code for #{city} is #{get_area_code(dial_book, city)}"
  else
    puts "You have entered a city that is not in the directory"
  end
end