$(document).ready(() ->

	$('div.question:not(:first)').hide()
	$('.next_btn2').hide()
	count_questions = $("#new_result .question").length
	check_question = 1

	$('a.next_btn').on('click', (e) ->
		if check_question == 2
			$('form div.question:visible').hide().next().show()
			$(this).hide()
			$('.next_btn2').show()
		else
			$('form div.question:visible').hide().next().show()

		check_question++
		e.preventDefault()
		return false
	)
)