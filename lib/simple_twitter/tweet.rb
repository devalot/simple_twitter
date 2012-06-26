module SimpleTwitter
  class Tweet

    attr_accessor(:text, :user, :time, :profile_image_url)

    def initialize (tweet_hash)
      @text              = tweet_hash['text']
      @user              = tweet_hash['from_user']
      @time              = tweet_hash['created_at']
      @profile_image_url = tweet_hash['profile_image_url']
    end
  end
end
