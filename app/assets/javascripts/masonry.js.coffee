$ ->
  $stage = $('.stage')

  $stage.masonry({
    itemSelector: '.card'
    columnWidth: 500
    gutter: 20
  })

  $.ajax "/search?query=bristol", {
    type: "POST"
  }
