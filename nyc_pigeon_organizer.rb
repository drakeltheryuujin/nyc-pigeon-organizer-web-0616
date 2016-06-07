require 'pry'

def nyc_pigeon_organizer(data)
  names = data[:color].values
  names.flatten!
  names.uniq!

  pigeon_list = {}

  names.map do |name|
    pigeon_list[name] = {:color => [], :gender => [], :lives => []}
  end


  data.each do |keys, values|
    values.each do |property, pigeons|
      pigeons.each do |pigeon|
        if pigeon_list[pigeon][keys].include?(property) == false
          pigeon_list[pigeon][keys] << property.to_s
        end
      end
    end
  end
  return pigeon_list
end
