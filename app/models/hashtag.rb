class Hashtag < ApplicationRecord
  belongs_to :user

  def self.tweet_search(term)
    hashtag_collection = {}
    $client.search(term, until: DateTime.yesterday.strftime('%F')).map do |tweets|
      tweets.hashtags.map do |hashtag|
        hashtag_name = hashtag.text.downcase
        if hashtag_collection.keys.include?(hashtag_name)
          hashtag_collection[hashtag_name] += 1;
        else
          hashtag_collection[hashtag_name] = 1;
        end
      end
    end
    hashtag_collection.sort_by{|key, value| value}.reverse
  end


end
