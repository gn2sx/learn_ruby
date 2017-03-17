class Book
  attr_writer :title
  def initialize(title='')
    @title=title
  end
  def title()
    little_words=['and','the','a','an','in','of']
    @title=@title.split(' ')
    cur_index=0
    @title.each{|w| w.capitalize! unless cur_index!=0&&little_words.include?(w);cur_index+=1}
    finalTitle=''
    @title.each{|w| finalTitle+="#{w} "}
    @title=finalTitle
    return @title.strip
  end
end
