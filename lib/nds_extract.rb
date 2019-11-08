$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'pry'
require 'pp'
require 'directors_database'
 def directors_totals(nds)
  result = {}
  director_names = []
 
  row_index = 0 
  grand_total = []
  while row_index < directors_database.count do 
     director_names.push(directors_database[row_index][:name])
  total = 0 
    # collect all the directors names in a variable 
    column_index = 0 
    while column_index < directors_database[row_index][:movies].count do 
      
       total+= directors_database[row_index][:movies][column_index][:worldwide_gross]
      # add each directors total gross
       column_index+=1 
    end
    grand_total.push(total)

    row_index+=1 

  end
  counter = 0 
  while counter < director_names.count do
  
  result[director_names[counter]] = grand_total[counter]
    counter+=1
    end
    result
end
 


  # add directors_database[0][:movies][row_index][ :worldwide_gross]
# inner loop loops through films then adds them, outer loop loops through directors