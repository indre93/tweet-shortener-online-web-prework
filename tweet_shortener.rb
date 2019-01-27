# Write your code here.

def word_substituter(tweet)
  dictionary = {
     "hello" => "hi",
     "to" => "2",
     "two" => "2",
     "too" => "2",
     "for" => "4",
     "four" => "4",
     "be" => "b",
     "you" => "u",
     "at" => "@",
     "and" => "&"
   }
  array = tweet.split(" ")
  array.map do |word|
    dictionary.each do |key, value|
      word = value if word.downcase == key
    end
    word
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |each_tweet|
    puts word_substituter(each_tweet)
  end
end

def selective_tweet_shortener(tweets)
  if tweets.split(" ").length <= 140
    puts tweets
  else
    bulk_tweet_shortener(tweets)
  end
end

def shortened_tweet_truncator

end
