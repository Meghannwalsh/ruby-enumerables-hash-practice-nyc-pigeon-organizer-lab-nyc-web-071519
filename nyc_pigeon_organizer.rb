def nyc_pigeon_organizer(data)
  pigeon_data = {}
  data.each do |k, v|
    v.each do |spac|
      spac.each do |name|
      if pigeon_data.include?(name) == nil
        pigeon_data[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
end
  pigeon_data.each do |name|
    data[:color].each do |col|
      if data[:color][col].include?(name)
        pigeon_data[name][:color] << col
      end
    end
    data[:gender].each do |gen|
      if data[:gender][gen].include?(name)
        pigeon_data[name][:gender] << gen
      end
    end
    data[:lives].each do |liv|
      if data[:lives][liv].include?(name)
        pigeon_data[name][:lives] << liv
      end
    end
  end
    pigeon_data
end
