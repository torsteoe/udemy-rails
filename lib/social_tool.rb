module SocialTool
    def self.twitter_search
        client = Twitter::REST::Client.new do |config|
            config.consumer_key         = ENV.fetch("TWITTER_CONSUMER_KEY")
            config.consumer_secret      = ENV.fetch("TWITTER_CONSUMER_SECRET")
            config.access_token         = ENV.fetch("TWITTER_ACCESS_TOKEN")
            config.access_token_secret  = ENV.fetch("TWITTER_ACCESS_SECRET")
        end
        client.user_timeline('Dadsaysjokes', result_type: 'recent').take(4).collect do |tweet|
            "#{tweet.created_at.to_date.to_s(:rfc822)}: #{tweet.text}"
        end
    end
end

