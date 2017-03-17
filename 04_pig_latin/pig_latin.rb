#write your code here
def translate(phrase)
  phrase.downcase!
  phrase=phrase.split(' ') #split the phrase up so we can work on each word individually
  vowels=['a','e','i','o','u']
  singles=['sch','qu']
  phrase.each do |w|
    len=w.length
    len.times do |i|
      break if vowels.include?(w[0])
      w[w.length]=w[0]
      w[0]=''
    end
    w << "ay"
  end
  finalPhrase=''
  phrase.each{|w| finalPhrase+="#{w} "}
  return finalPhrase.strip
end
