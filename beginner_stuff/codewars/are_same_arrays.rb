def comp(array1, array2)
  return false if(array1) || array2).nil?
  array1.map{|i| i*i}.sort == array2.sort
end

#top answer

def comp(array1, array2)
  array1.nil? || array2.nil? ? false : array1.sort.map {|v| v ** 2} == array2.sort
end