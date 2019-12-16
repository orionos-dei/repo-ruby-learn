#Highest Rank Number in an Array
#Complete the method which returns the number which is most
#frequent in the given input array. If there is a tie for most
#frequent number, return the largest number among them.

def highest_rank(arr)
  hash_rank = {}
  
  arr.each do |num|
    hash_rank[num.to_s.to_sym] = arr.count(num)
  end
  
  result = []
  hash_rank.each{|k,v| result << k.to_s.to_i if v == hash_rank.values.max}
  
  result.sort.reverse[0]
  
end

#top result

def highest_rank(arr)
  arr.group_by(&:itself).max_by { |k, v| [v.size, k] } [0]
end