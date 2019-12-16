#It must start with a hashtag (#).
#All words must have their first letter capitalized.
#If the final result is longer than 140 chars it must return false.
#If the input or the result is an empty string it must return false.


def generateHashtag(str)

  str = str.split.map(&:capitalize).join("")
  if str.empty?
    false
  elsif str.size >= 140
    false
  else
    "\##{str}"
  end
end

#top result

def generateHashtag(str)
  str = "#" << str.split.map(&:capitalize).join
  str.size <= 140 && str.size > 1 ? str : false
end