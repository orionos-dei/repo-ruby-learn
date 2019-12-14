def caesar_cypher string, factor
  factor = factor.to_i
  while factor > 26
    factor = factor % 26
  end
  
  shift = factor
  temp_number = 0
  temp_string = ""

  string.scan(/./){ |char|
    
    if char.ord.between?("A".ord,"Z".ord)
      if char.ord + shift > "Z".ord
        temp_number = "A".ord
        temp_number += (char.ord + shift - 1) % "Z".ord
      else
        temp_number = char.ord + shift
      end
      temp_string << temp_number.chr
    elsif char.ord.between?("a".ord,"z".ord)
      if char.ord + shift > "z".ord
        temp_number = "a".ord
        temp_number += (char.ord + shift - 1) % "z".ord
      else
        temp_number = char.ord + shift
      end
      temp_string << temp_number.chr
    else
      temp_string << char
    end
  }
  
  temp_string

end

print "Insert string: "
str = gets
print "Insert shift factor: "
int = gets.chomp
puts caesar_cypher str, int