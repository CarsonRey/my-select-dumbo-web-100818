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

# .select is being passed into the yield block for this test, so yield(collection[i]) will evaluate to true or false. This opens up the method for a conditional. So "if yield(collection[i])"" is actually "if true". Inside that conditional statement we do the action of storing the actual part/iteration of the collection in 'storage'. Increment by 1 goes *outside* of the conditional block because it is part of the while loop and 'if' yield(collection[i]) is true it will increment after the action of storing the collection item. incrementing 'i' in the 'if' statement is incorrect because there is no reference to/evaluation about i's current value