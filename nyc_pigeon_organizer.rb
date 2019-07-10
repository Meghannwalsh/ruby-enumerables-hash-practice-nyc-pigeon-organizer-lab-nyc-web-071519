def nyc_pigeon_organizer(data)
  pigeon_data = {}
  data.each do |k, v|
    v.each do |spac|
      spac.each do |name|
      if !pigon_data.include?(name)
        pigeon_data[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  pigeon_data.each do |name|
    data[:color].each do |col|
      if data[:color][col].include?(name)
        


end
