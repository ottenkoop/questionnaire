$(document).ready(() ->
	$('div.question4').hide()
	$('div.question5').hide()
	$('a.next2').hide()
	$('a.complete').hide()

	$('a.next').on('click', () ->
		$('div.question4').show()
		$('div.question3').hide()
		$('a.next').hide()
		$('a.next2').show()

		return false
	)

	$('a.next2').on('click', () ->
		$('div.question4').hide()
		$('div.question5').show()
		$('a.next2').hide()
		$('a.complete').show()

	)
)