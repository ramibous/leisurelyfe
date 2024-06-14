require 'json'

# Load the data from the JSON file
filename = 'attractions_data.json'
data = JSON.parse(File.read(filename))

# valid_keys = ['name', 'image_url', 'rating', 'coordinates', 'location']


# Map the data to only include the required keys
mapped_data = data.map do |item|
  new_hash = {}
  new_hash['name'] = item['name']
  new_hash['image_url'] = item['image_url']
  new_hash['rating'] = item['rating']
  new_hash['latitude'] = item['coordinates']['latitude']
  new_hash['longitude'] = item['coordinates']['longitude']
  new_hash['address'] = item['location']['display_address'].join(' ')
  new_hash
end

# valid_keys = ['name', 'image_url', 'rating', 'coordinates', 'location']

# # Write the mapped data to a new JSON file
File.open("../mapped_json/mapped_#{filename}", 'w') do |f|
  f.write(JSON.pretty_generate(mapped_data))
end
