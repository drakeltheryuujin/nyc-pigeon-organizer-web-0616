require 'pry'

def nyc_pigeon_organizer(data)
  # names = data[:color].values
  # names.flatten!
  # names.uniq!

  # pigeon_list = {}

  # names.map do |name|
    # pigeon_list[name] = {:color => [], :gender => [], :lives => []}
  # end


  # data.each do |keys, values|
    # values.each do |property, pigeons|
      # pigeons.each do |pigeon|
        # if pigeon_list[pigeon][keys].include?(property) == false
          # pigeon_list[pigeon][keys] << property.to_s
        # end
      # end
    # end
  # end
  # return pigeon_list


  # list of names
  names = data[:gender][:male] + data[:gender][:female]

  # ["theo", "peter"]
  # TASK get to here...
  # {"theo" => {}, "Peter Jr." => {}}

  initial_structure = names.each_with_object({}) do |name, initial_structure|
    # construct for me another hash where the keys are the attributes
    # and the values are an array
    attributes = data.keys
    attributes_hash = attributes.each_with_object({}) do |attribute, attributes_hash|
      attributes_hash[attribute] = []
    end


    initial_structure[name] = attributes_hash
  end

  #concrete way
  # data[:color].each do |color, names|
    # names.each do |name|
      # initial_structure[name][:color] << color.to_s
    # end
  # end

  #abstract this further
  data.keys.each_with_object(initial_structure) do |attribute, working_hash|
    data[attribute].each do |trait, names|
      names.each do |name|
        working_hash[name][attribute] << trait.to_s
      end
    end
  end
end
