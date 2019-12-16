#You are given an array (which will have a length of at least 3
#but could be very large) containing integers. The array is 
#either entirely comprised of odd integers or entirely comprised
#of even integers except for a single integer N. Write a method
#that takes the array as an argument and returns this "outlier" N.

def find_outlier(integers)
  odd_val = []
  even_val = []
  integers.each {|n| n.odd? ? odd_val << n : even_val << n}
  odd_val.length == 1 ? odd_val[0] : even_val[0]
end

#top_result

def find_outlier(integers)
  integers.partition(&:odd?).find(&:one?).first
end