require 'directors_database'

def directors_totals(nds)
  require 'pp' 
  result = {}
  index = 0
  while index < nds.size do
    director_name = nds[index]
    result[director_name[:name]] = gross_for_director(director_name)
    index += 1
  end
  result
end
def gross_for_director(director_data)
  index = 0
  total = 0
  while index < director_data[:movies].length do
  total += director_data[:movies][index][:worldwide_gross]
  index += 1
  end
total
end
