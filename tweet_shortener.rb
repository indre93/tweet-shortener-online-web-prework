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
  tweets.each do |word|
    puts word_substituter(word)
  end
end

def selective_tweet_shortener(tweets)
  tweets.split(" ").each do |tweet|
    if tweet.length > 140
      puts word_substituter(tweet)
    else
      puts tweet
    end
  end
end

def shortened_tweet_truncator

end
