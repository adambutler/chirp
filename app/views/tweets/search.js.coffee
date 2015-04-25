console.log 'subscribing to presence-<%= @uid %>'

pusher = new Pusher('<%= ENV["PUSHER_KEY"] %>')

presenceChannel = pusher.subscribe('presence-<%= @uid %>')

Pusher.log = (message) ->
  if window.console?.log?
    console.log message

presenceChannel.bind 'pusher:subscription_succeeded', ->
  console.log presenceChannel.members.me
  console.log presenceChannel
  console.log presenceChannel.members

presenceChannel.bind 'pusher:subscription_error', (err) ->
  console.log err

channel = pusher.subscribe('<%= @uid %>')

channel.bind 'new_tweet', (data) ->
  $(".tweets").prepend("""
    <div class="card">
      <h1>#{data.text}</h1>
    </div>
  """)

  $(".tweets").masonry 'prepended', $(".card").first()
