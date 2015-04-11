$ ->
  cardA = $("#cardA")
  cardASecondary = $("#cardASecondary")

  speed = 1
  golden = 38.197

  timeline = new TimelineMax(
    delay: 2
    repeat: 10
    repeatDelay: 2
  )

  timeline
    .set(cardASecondary, {visibility: "hidden", top: "100%", rotationX: -90, transformOrigin:"center top"})
    .set(cardA, {opacity: 0, z: -400, top: "100%", bottom: "-100%", rotationX: -55, transformOrigin:"center top"})
    .to(cardA, speed, {opacity: 1, z: 0, rotationX: 0, top: "0%", bottom: "0%"})
    .addLabel('out')
    .set(cardASecondary, {visibility: "visible", zIndex: "0"}, "out")
    .to(cardA, speed, {delay: 1, z: 0, rotationX: 90, top: "-100%", bottom: "100%", transformOrigin:"center bottom"}, "out")
    .to(cardASecondary, speed, {delay: speed, rotationX: 0, top: "0%"}, "out")
    .set(cardASecondary, {delay: speed*1.5, zIndex: "2"}, "out")
    .addLabel('end')
    .set(cardA, {delay: 1, display: "none"}, "end")
    .to(cardASecondary, speed, {delay: 1, rotationX: -180, transformOrigin: "center top"}, "end")
