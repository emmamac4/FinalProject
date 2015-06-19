class ImageGetter
  
  def convert(answers)
    urls=[]
    answers.each do |answer|
      if answer == :confused
        urls.push("../images/confused.png")
      elsif answer == :smile
        urls.push("../images/smile.png") 
      elsif answer == :grimace
        urls.push("../images/grimace.png")
     elsif answer == :thumbs_up 
       urls.push("../images/thumbsup.png")
     end 
    end
      return urls
  end
  
end