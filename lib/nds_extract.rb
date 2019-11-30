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
  movies = director_data[:movies]
  movies.length.
end
