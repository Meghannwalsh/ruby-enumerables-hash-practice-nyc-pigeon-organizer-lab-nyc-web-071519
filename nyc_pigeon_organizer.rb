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
  data.each do |k, v|
    v.each do |spac|
        if spac.include?()


end
