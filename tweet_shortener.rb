# Write your code here.
dictionary = {"hello" => "hi", ["to", "two", "to"] => "2", ["for", "four"] => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}



def word_substituter(tweet, dictionary)
  tweet_array = tweet.split(" ")
  tweet_array.map do |word|
    dictionary.each do |key, value|
      word = value if word.downcase == key
    end
    word
  end.join(" ")
end

def bulk_tweet_shortener

end

def selective_tweet_shortener

end

def shortened_tweet_truncator

end
