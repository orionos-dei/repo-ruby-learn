#replace every letter with its position in the alphabet

def alphabet_position(text)
  text.upcase.scan(/[A-Z]/).join.chars.map{|c| c.ord-64}.join(" ")
end

#top result

def alphabet_position(text)
  text.gsub(/[^a-z]/i, '').chars.map{ |c| c.downcase.ord - 96 }.join(' ')
end