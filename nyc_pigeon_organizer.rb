def nyc_pigeon_organizer(hash)
  new_hash = {}
  hash.each do |outer_key, value|
    # pp outer_key
    # :color :gender :lives
    # pp value
    # is a hash storing grey, white, male etc
    value.each do |inner_key, inner_value|
      # pp inner_key
      #:purple :grey :male :female "subway" "lib"
      
      # pp inner_value
      # arrays of pigeon names
      
      inner_value.each do |pigeon_name|
        #if no hash with key at pigeon_name exists, create it
        if !new_hash[pigeon_name]
          new_hash[pigeon_name] = {}
        end
        if !new_hash[pigeon_name][outer_key]
          new_hash[pigeon_name][outer_key] = []
          new_hash[pigeon_name][outer_key] << inner_key.to_s
        end
      end 
    end
  end
  pp new_hash
end

pigeon_list = {
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

nyc_pigeon_organizer(pigeon_list)