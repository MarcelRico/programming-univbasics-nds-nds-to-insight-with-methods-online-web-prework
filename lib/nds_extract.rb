require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  director_profits = {}
  nds.length.times do |idx|
    director = nds[idx][:name]
    director_profits[director] = gross_for_director(nds[idx])
  end
  return director_profits
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
  movie_list = director_data[:movies]
  movie_list.length.times do |idx|
    director_total = 0
    director = director_data[outer_idx][:name]
    movie_list = director_data[outer_idx][:movies]
    
  movie_list.length.times do |inner_index|
    director_total += movie_list[inner_index][:worldwide_gross]
  end
    
  return director_total
end
