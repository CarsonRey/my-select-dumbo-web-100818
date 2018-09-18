def my_select(collection) 
 block_given?
 storage = []
 i = 0 
 while i < collection.length 
  if yield(collection[i])
    storage << (collection[i])
  
   end
    i += 1
 end
  storage
end

# .select is being passed into the yield block for this test, so yield(collection[i]) will evaluate to true. This opens up the method for a conditional. So if yield(collection[i]) is actually if true. Inside that conditional statement we store the actual part/iteration of the collection in 'storage'. Increment by 1 goes outside of the conditional block because it is part of the while loop