class TwitterWorker
  include Sidekiq::Worker

  def perform(query)
    client.filter(:track => query) do |object|
      if object.is_a?(Twitter::Tweet)
        # Will use pusher to send to the client
      end
      # process.exit unless client.present?
    end
  end
end
