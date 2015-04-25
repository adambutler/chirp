$ ->
  $tweets = $('.tweets')

  $tweets.masonry({
    itemSelector: '.card'
    columnWidth: 500
    gutter: 20
    isFitWidth: true
  })

  $.ajax "/search?query=bristol", {
    type: "POST"
  }
