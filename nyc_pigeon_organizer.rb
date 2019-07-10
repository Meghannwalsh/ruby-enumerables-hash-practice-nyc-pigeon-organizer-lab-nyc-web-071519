def nyc_pigeon_organizer(data)
  pigeon_data = {}
  data.each do |k, v|
    v.each do |spac, names|
      names.each do |name|
        if !pigeon_data.include?(name)
        pigeon_data[name] = {:color => [], :gender => [], :lives => []}
      end
    end 
  end
end
  pigeon_data.each_key do |name|
    data[:color].each do |col, original_name|
      if data[:color][col].include?(name)
        pigeon_data[name][:color] << col
      end
    end
    data[:gender].each do |gen, og_name|
      if data[:gender][gen].include?(name)
        pigeon_data[name][:gender] << gen
      end
    end
    data[:lives].each do |liv, og_name|
      if data[:lives][liv].include?(name)
        pigeon_data[name][:lives] << liv
      end
    end
  end
    pigeon_data
end


pigeon_data_1 = {
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
p nyc_pigeon_organizer(pigeon_data_1)
