class TwitterWorker
  include Sidekiq::Worker

  def perform(query)
    tweets = []
    TWITTER_CLIENT.filter(:track => query) do |object|
      if object.is_a?(Twitter::Tweet)
        # To Do: Will use pusher to send to the client
        puts object.text
      end

      unless Pusher["presence-#{query}"].info[:occupied]
        return
      end
    end
  end
end
