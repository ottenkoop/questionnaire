$(document).ready(() ->

	$('div.question:not(:first)').hide()
	$('.next_btn2').hide()
	$('.bobo_no_answer').hide()
	$('.bobo_good_answer').hide()
	$('.bobo_wrong_answer').hide()
	$('.next_btn1').hide()
	$('div.discription').hide()
	$('div.points').hide()
	$('div.select').hide()
	$('div.selected_good').hide()
	$('div.selected_wrong').hide()
	$('div.goodanswer').hide()
	$('div.wronganswer').hide()
	count_questions = $("#new_result .question").length
	check_question = 1
	
	$('a.next_btn1').on('click', (e) ->
		resetQuestionView()
		$('label.answercontent').show()
		$('div.discription').hide()
		if check_question == count_questions
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
		selected_answer_points = parseInt($(':radio:checked').eq(check_question - 1).next().next('input[class="points"]').attr('value'));

		if !$(".radio-toolbar").eq(check_question - 1).find(":radio:checked").length
		 	$('div.select').show()
		 	$('.bobo_no_answer').show()
		 	$('.bobo_thinking').hide()
		else if selected_answer_points == 1 # Good answer 
			$('.bobo_good_answer').show()
			$('.bobo_no_answer').hide()
			$('div.selected_good').show()
			$('div.select').hide()
			$('.bobo_thinking').hide()
			$('div.goodanswer').show()
			$('div.discription').show()
			$('label.answercontent').hide()
			$('.next_btn0').hide()
			$('.next_btn1').show()
		else if selected_answer_points == 0 # Wrong answer
			$('.bobo_wrong_answer').show()
			$('.bobo_no_answer').hide()
			$('div.selected_wrong').show()
			$('div.select').hide()
			$('div.wronganswer').show()
			$('.bobo_thinking').hide()
			$('div.discription').show()
			$('label.answercontent').hide()
			$('.next_btn0').hide()
			$('.next_btn1').show()

		e.preventDefault()
	)

	resetQuestionView = () ->
		$('
			.bobo_thinking,
			.next_btn0
			').show();

		$('
			.bobo_good_answer,
			div.selected_good,
			div.goodanswer,
			div.discription,
			.next_btn1,
			.bobo_wrong_answer,
			div.selected_wrong,
			div.wronganswer
			')
		.hide();
)