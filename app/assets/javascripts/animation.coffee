$ ->
  cardA = $("#cardA")
  cardASecondary = $("#cardASecondary")
  cardB = $("#cardB")
  cardBSecondary = $("#cardBSecondary")

  speed = 2
  golden = 38.197

  timeline = new TimelineMax(
    delay: 2
    repeat: 10
    repeatDelay: 2
  )

  timeline
    .set([cardASecondary, cardBSecondary], {top: "100%", rotationX: -90, transformOrigin:"center top"})
    .set([cardA, cardB], {z: -400, top: "100%", bottom: "-100%", rotationX: -55, transformOrigin:"center top"})
    .to(cardA, speed, {z: 0, rotationX: 0, top: "0%", bottom: "0%"})
    .addLabel('out')
    .to(cardA, speed, {z: 0, rotationX: 90, top: "-100%", bottom: "100%", transformOrigin:"center bottom"}, "out")
    .to(cardASecondary, speed, {rotationX: 0, top: "0%"}, "out")
    .addLabel('end')
    .set(cardA, {display: "none"}, "end")
    .to(cardASecondary, speed, {rotationX: -180, transformOrigin: "center top"}, "end")
