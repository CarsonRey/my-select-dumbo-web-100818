def my_select(collection) 
 block_given?
 storage = []
 i = 0 
 while i < collection.length 
  if yield(collection[i]) == true 
    storage <<  yield(collection[i])
    i += 1 
  else
    nil
  end
  storage
 end
end
