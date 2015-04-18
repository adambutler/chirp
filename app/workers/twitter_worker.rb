class TwitterWorker
  include Sidekiq::Worker

  def perform(query)
    tweets = []
    TWITTER_CLIENT.filter(:track => query) do |object|
      if object.is_a?(Twitter::Tweet)
        # To Do: Will use pusher to send to the client
        tweets << object.text
        puts object.text
      end

      # To Do: presence channel to check if the user is still
      # on the page.
      if tweets.size > 5
        return
      end
    end
  end
end
