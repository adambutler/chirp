class TwitterWorker
  include Sidekiq::Worker

  def perform
    topics = ["coffee", "tea"]
    client.filter(:track => topics.join(",")) do |object|
      if object.is_a?(Twitter::Tweet) do

        # Will use pusher to send to the client

      end

      # process.exit unless client.present?
    end
  end
end
