def substrings string, dictionary
  
  list = Hash.new(0)
  string.downcase.split.each{|str|
    dictionary.each{|substr| list[substr]+=1 if str.include? substr}
  }

  p list
  
end
string = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings string, dictionary