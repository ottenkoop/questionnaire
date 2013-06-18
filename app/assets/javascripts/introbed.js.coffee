$ ->
  $(" .next_btn_bed_1,
      .next_btn_bed_mob_1").hide()
  texts = ["text1", "text2", "text3"]
  texts_position = 0
  total_texts = texts.length
  $(".next_btn_bed_mob, .next_btn_bed").click ->
    message = texts[texts_position]
    $(".speech_bubble_bed .first").text message
    console.log texts_position
    texts_position++
    if texts_position is total_texts
      $(".next_btn_bed_mob, .next_btn_bed").hide()
      $(".next_btn_bed_mob_1, .next_btn_bed_1").show()
    false