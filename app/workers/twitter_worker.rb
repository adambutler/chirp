class TwitterWorker
  include Sidekiq::Worker

  def perform(query, uid)
    tweets = []
    TWITTER_CLIENT.filter(:track => query) do |object|
      if object.is_a?(Twitter::Tweet)
        # To Do: Will use pusher to send to the client
        puts object.text

        Pusher["#{uid}"].trigger('new_tweet', {
          text: object.text
        })
      end

      return unless Pusher["presence-#{uid}"].info[:occupied]
    end
  end
end
