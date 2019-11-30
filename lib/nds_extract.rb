require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  nds.length.times do ||
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  r_hash = {}
  
  director_data.length.times do |outer_idx|
    
    director_total = 0
    director = director_data[outer_idx][:name]
    movie_list = director_data[outer_idx][:movies]
    
    movie_list.length.times do |inner_index|
      director_total += movie_list[inner_index][:worldwide_gross]
    end
    
    r_hash[director] = director_total
  end
  
  r_hash
end
