require "pry"

def dictionary
  dictionary ={
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
    }
end

def word_substituter(tweet)
  boring_tweet = tweet.split
  cool_kids_tweet = []
  boring_tweet.each do |word|
    if dictionary.has_key?(word)
        cool_kids_tweet << dictionary.fetch(word)
    else
      cool_kids_tweet << word
    end
  end 
  cool_kids_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  
  tweets.each do |tweets|
    puts word_substituter(tweets)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
      return word_substituter(tweet)
  elsif tweet.length <= 140
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  tuncated_tweet = ""
  truncated_tweet = selective_tweet_shortener(tweet)
  if truncated_tweet.length > 140
      return truncated_tweet[0..139]
  else
    return truncated_tweet
  end
end


