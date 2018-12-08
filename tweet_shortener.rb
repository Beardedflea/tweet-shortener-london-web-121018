def dictionary
  dictionary ={
    :hello => "hi",
    :to => "2",
    :two => "2",
    :too => "2",
    :for => "4",
    :four => "4",
    :be => "b",
    :you => "u",
    :at => "@",
    :and => "&"
    }
end

def word_substituter(tweet)
  cool_kids_tweet = tweet.split
  cool_kids_tweet.each do |word|
    if word.eql?(dictionary) == true
      word.replace(dictionary)
    end
   end 
   cool_kids_tweet
end