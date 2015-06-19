class Emoji
  def initialize(params)
    #TEST PARAMS ARRAY - for a test w 2 emojis, happy day indiff chill ugh
#     params={
#       :tone => "happy",
#       :time => "day",
#       :feel => "indiff",
#       :pers => "chill",
#       :react => "okay"
#       }
    @params = params
    @emoji={
      :smile => 0,
      :confused => 0,
      :grimace => 0,
      :thumbs_up => 0
      }
  end
 
  #question one results
  def q1
    if @params[:tone] == "happy"
      @emoji[:smile] += 1
    elsif @params[:tone] == "angry"
      @emoji[:grimace] += 1
    elsif @params[:tone] == "sad"
      @emoji[:confused] += 1
    elsif @params[:tone] == "bored"
      @emoji[:thumbs_up] += 1
    end
  end
  
  #question two results
  def q2
    if @params[:time] == "day"
      @emoji[:smile] += 1
    elsif @params[:time] == "month"
      @emoji[:thumbs_up] += 1
    elsif @params[:time] == "year"
      @emoji[:confused] += 1
    elsif @params[:time] == "forever"
      @emoji[:grimace] += 1
    end
  end
  
  #question three results
  def q3
    if @params[:feel] == "annoyed"
      @emoji[:grimace] += 1
    elsif @params[:feel] == "indiff"
      @emoji[:thumbs_up] += 1
    elsif @params[:feel] == "confused"
      @emoji[:confused] += 1
    elsif @params[:feel] == "cheerful"
      @emoji[:smile] += 1
    end
  end
  
    #question four results
  def q4
    if @params[:pers] == "serious"
      @emoji[:grimace] += 1
    elsif @params[:pers] == "chill"
      @emoji[:thumbs_up] += 1
    elsif @params[:pers] == "funny"
      @emoji[:smile] += 1
    elsif @params[:pers] == "indecisive"
      @emoji[:confused] += 1
    end
  end
  
  #question five results
  def q5
    if @params[:react] == "hahaha"
      @emoji[:smile] += 1
    elsif @params[:react] == "what"
      @emoji[:confused] += 1
    elsif @params[:react] == "ugh"
      @emoji[:grimace] += 1
    elsif @params[:react] == "okay"
      @emoji[:thumbs_up] += 1
    end
  end
  
  def result
    #run questions
    q1
    q2
    q3
    q4
    q5
    #results
    values = @emoji.values
    max = values.max
    answers =[]
    #looking through the hash for matches
    @emoji.each do |emoji,score|
      if score == max
        answers.push(emoji)
      end
    end
    return answers
  end
end

# Test = Emoji.new
# puts Test.result

