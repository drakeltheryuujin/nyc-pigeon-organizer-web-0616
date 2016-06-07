require 'pry'

def nyc_pigeon_organizer(data)
  names = data[:color].values
  names.flatten!
  names.uniq!
  binding.pry
end
