def validBraces(braces)
  (braces.length / 2).times do |i|
    braces.sub!("{}", "")
    braces.sub!("[]", "")
    braces.sub!("()", "")
  end
  braces.empty?
end