# Write your code here.

def dictionary
  words = {
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
 end


def word_substituter(tweet)
  array = tweet.split(" ")
  tweet.split(" ").map do |word|
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
  tweets.split(" ").map do |tweet|
    if tweet.length > 140
      word_substituter(tweets)
    else tweet.length <= 140
      puts tweets
    end
  end
end


def shortened_tweet_truncator(tweet)
  tweet.split(" ").map do |phrase|
    if phrase.length > 140
      word_substituter(phrase)[0..140] + "..."
    else
      phrase
    end
  end.join(" ")
end
