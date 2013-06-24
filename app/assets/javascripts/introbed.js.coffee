$ ->
  texts = ["We can't do anything about it now.", "I hope I will be able to sleep."]
  texts_position = 0
  total_texts = (texts.length + 1)
  $(".next_btn_bed_mob, .next_btn_bed").click ->
    message = texts[texts_position]
    $(".speech_bubble_bed .first").text message
    texts_position++
    
    if texts_position is total_texts
      $('a.next_btn_bed').setAttribute("href", "/3")
    false