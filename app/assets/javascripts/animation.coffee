$ ->
  card = $(".card")

  speed = 1
  delay: 2
  golden = 38.197

  animate = (index = 0) ->

    index = 0 unless card[index]?

    timeline = new TimelineMax(
      delay: 0
      repeat: false
    )

    timeline
      .set(card[index], {
        visibility: "visible",
        opacity: 1,
        z: 0
        yPercent: 0
        rotationX: 0
      })
      .from(card[index], 1, {
        transformOrigin:"center top"
        opacity: 0.5
        z: -400
        yPercent: 45
        rotationX: -45
      })
      .add(->
        animate(index+1)
      , "+=2")
      .to(card[index], 1, {
        transformOrigin:"center bottom"
        rotationX: 90
        yPercent: -100
      })
      .to(card[index], 1, {
        rotationX: -90
      }, "+=2")

  animate()
