$(document).ready(() ->

	$('div.question:not(:first)').hide()
	$('.next_btn2').hide()
	$('.next_btn1').hide()
	$('div.discription').hide()
	$('div.points').hide()
	$('div.goodanswer').hide()
	$('div.wronganswer').hide()
	count_questions = $("#new_result .question").length
	check_question = 1
	
	$('a.next_btn1').on('click', (e) ->
		$('label.answercontent').show()
		$('div.discription').hide()
		if check_question == count_questions - 1
			$('form div.question:visible').hide().next().show()
			$(this).hide()
			$('.next_btn2').show()
		else
			$('form div.question:visible').hide().next().show()
			$('.next_btn1').hide()
			$('.next_btn0').show()

		check_question++
		e.preventDefault()
		return false
	)

	$('a.next_btn0').on('click', (e) ->
		selected_answer_points = parseInt($(':radio:checked').next('input').attr('value'));
		console.log(typeof selected_answer_points);

		if !$(":radio:checked").length
		 	alert "Please select one radio"
		else if selected_answer_points == 1
			$('div.goodanswer').show()
			$('div.discription').show()
			$('label.answercontent').hide()
			$('.next_btn0').hide()
			$('.next_btn1').show()
		else
			$('div.wronganswer').show()
			$('div.discription').show()
			$('label.answercontent').hide()
			$('.next_btn0').hide()
			$('.next_btn1').show()
	)
)