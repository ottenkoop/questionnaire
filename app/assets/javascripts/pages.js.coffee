$(document).ready(() ->

	# window.onbeforeunload = ->
 	#		"Are you sure you want to refresh? Your results will not be saved!"
	
	window.addEventListener "load", ->
	  setTimeout (->
	    window.scrollTo 0, 1
	  ), 0

	hideAddressBar = ->
  document.documentElement.style.height = (window.outerHeight / window.devicePixelRatio) + "px"  if document.documentElement.scrollHeight < window.outerHeight / window.devicePixelRatio
  setTimeout window.scrollTo(1, 1), 0
	window.addEventListener "load", ->
  hideAddressBar()

	$('	div.question:not(:first),
			.next_btn2, 
			.patient1_no_answer,
			.patient2_no_answer,
			.patient3_no_answer,
			.bobo_good_answer,
			.bobo_wrong_answer,
			.next_btn1,
			.patient2,
			.patient3,
			div.discription,
			div.points,
			div.select,
			div.selected_good,
			div.selected_wrong,
			div.goodanswer,
			div.wronganswer').hide()

	count_questions = $("#new_result .question").length
	check_question = 1
	final_button = 0
	second_speaker = (count_questions / 3)
	third_speaker = ((count_questions / 3) * 2)

	$('a.next_btn1').on('click', (e) ->
		resetQuestionView()
		$('label.answercontent').show(1000)
		$('div.discription').hide()
		if check_question == count_questions
			$('form div.question:visible').hide().next().show(450)
		else 
			$('form div.question:visible').hide().next().show(450)
			$('.next_btn1').hide()
			$('.next_btn0').show()

		if check_question < second_speaker
			$('.patient1').show()
		else if check_question >= third_speaker
			$('.patient3').show()
		else
			$('.patient2').show()

		check_question++
		e.preventDefault()
		return false
	)

	$('a.next_btn0').on('click', (e) ->
		selected_answer_points = parseInt($(':radio:checked').eq(check_question - 1).next().next('input[class="points"]').attr('value'));

		if !$(".radio-toolbar").eq(check_question - 1).find(":radio:checked").length
		 	$('div.select').show(650)
		 	
		else if selected_answer_points == 1 # Good answer 
			$('	.bobo_no_answer,
					.patient1,
					.patient2,
					.patient3,
					div.select,
					.bobo_thinking,
					label.answercontent,
					.next_btn0').hide()

			$('div.selected_good').show(650)
			$('	div.goodanswer,
					div.discription,
					.next_btn1,
					.bobo_good_answer').show()
			final_button++

		else if selected_answer_points == 0 # Wrong answer
			$('.bobo_wrong_answer').show()
			$('	.bobo_no_answer,
					.patient1,
					.patient2,
					.patient3,
					label.answercontent,
					.bobo_thinking,
					div.select,
					.next_btn0').hide()

			$('div.selected_wrong').show(650)
			$('	div.wronganswer,
					div.discription,
					.next_btn1').show()
			final_button++

		if final_button == count_questions
			$('	.next_btn1,
					.next_btn0').hide()
			$(' .next_btn2').show()
		
		e.preventDefault()
	)

	resetQuestionView = () ->
		$('	.bobo_thinking,
				.next_btn0').show();

		$('	.bobo_good_answer,
				div.selected_good,
				div.goodanswer,
				div.discription,
				.next_btn1,
				.bobo_wrong_answer,
				div.selected_wrong,
				div.wronganswer').hide();

	$('a.next_btn2').click ->
		$("form").submit()
		false

)