pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each do |color_gender_lives, attributes|
    attributes.each do |keys, names|
      #keys = purple, grey, white, brown, male, female, subway...
      names.each do |name|
        if pigeon_list.has_key?(name)
          puts keys  
        else 
          pigeon_list[name] = {}
          pigeon_list[color_gender_lives] = [key]
        end
      end
    end
  end
  puts pigeon_list    
end

nyc_pigeon_organizer(pigeon_data)