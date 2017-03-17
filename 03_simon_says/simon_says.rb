#write your code here
def echo(msg)
  return msg
end

def shout(msg)
  return msg.upcase!
end

def repeat(msg,times=2)
  return ((msg+' ')*times).strip
end

def start_of_word(word,letters=1)
  return word[0..(letters-1)]
end

def first_word(words)
  words=words.split(' ')
  return words[0]
end

def titleize(title)
  little_words=['and','the','over']
  title=title.split(' ')
  cur_index=0
  title.each{|w| w.capitalize! unless cur_index!=0&&little_words.include?(w);cur_index+=1}
  finalTitle=''
  title.each{|w| finalTitle+="#{w} "}
  return finalTitle.strip
end
