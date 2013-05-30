$(document).ready(() ->
	conversation =
		talks: [
			{'speaker': 'bobo'
			'message': 'Where am I?'}
			,
			{'speaker': 'bird'
			'message': 'Fuck you.'}
			,
			{'speaker': 'bird'
			'message': 'I SAID: Fuck you.'}
		]

	console.log(conversation)

	$('.cloud_hosp').not(':first').hide()
	$('.hosp_next_6').hide()

	conversation_position = 0

	total_talks = conversation.talks.length

	$('.hosp_next').on('click', (e) ->

		if(conversation_position == total_talks)
			# SHIT UITVOEREN VANWEGE EINDE
			console.log('einde')
			return false

		speaker = conversation.talks[conversation_position].speaker
		message = conversation.talks[conversation_position].message

		if(speaker == 'bobo')
			$('.cloud_hosp').hide()
			$('.bubble_hosp_bobo .hosp_con').text(message)
			$('.bubble_hosp_bobo').show()

		else 
			$('.cloud_hosp').hide()
			$('.bubble_hosp_bird .hosp_con').text(message)
			$('.bubble_hosp_bird').show()

		conversation_position++

		e.preventDefault
	)

	# $('	.hosp_con_bobo_2,
	# 		.hosp_next_2,
	# 		.hosp_next_3,
	# 		.hosp_next_4,
	# 		.hosp_next_5,
	# 		.hosp_next_6,
	# 		.speech_bubble_bird').hide()
	
	# $('.hosp_next_1').on('click', (e) ->
	# 	$('	.hosp_con_bird_2,
	# 			.hosp_con_bird_3,
	# 			.hosp_con_bird_4,
	# 			.hosp_con_bird_5,
	# 			.bubble_hosp_bobo,
	# 			.hosp_next_1').hide()

	# 	$('	.hosp_con_bird_1,
	# 			.hosp_next_2,
	# 			.speech_bubble_bird
	# 			').show()

	# 	e.preventDefault()
	# )

	# $('.hosp_next_2').on('click', (e) -> 
	# 	$('	.hosp_con_bird_3,
	# 			.hosp_con_bird_4,
	# 			.hosp_con_bird_5,
	# 			.hosp_con_bird_1,
	# 			.bubble_hosp_bobo,
	# 			.hosp_next_2').hide()

	# 	$('	.hosp_con_bird_2,
	# 			.hosp_next_3,
	# 			.speech_bubble_bird
	# 			').show()

	#	e.preventDefault()
	#)
)