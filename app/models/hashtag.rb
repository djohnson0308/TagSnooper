class Hashtag < ApplicationRecord
  belongs_to :topic

  def self.tweet_search(term)
    hashtag_collection = {}
    TwitterService.search(term).map do |tweets|
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

  def self.batch_create(hashtags)
    hashtags[0..14].map do |hashtag|
      create(name: hashtag[:name], count: hashtag[:count])
    end
  end

end
