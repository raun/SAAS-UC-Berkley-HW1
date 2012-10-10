def palindrome?(str)
  str.downcase.gsub(/[^a-z]/,'').reverse==str.downcase.gsub(/[^a-z]/,'')
end

def count_words(str)
  res = Hash.new(0)
  str.downcase.scan(/\w+/).map{|word| res[word] = str.downcase.scan(/\b#{word}\b/).size}
  return res
end
