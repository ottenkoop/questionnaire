$(document).ready(() ->
	conversation =
		talks: [
			{'speaker': 'bird'
			'message': 'You are in the city clinic, you are a doctor.'}
			,
			{'speaker': 'bird'
			'message': 'There are three patients in the waiting room.'}
			,
			{'speaker': 'bird'
			'message': 'You have to help them.'}
			,
			{'speaker': 'bobo'
			'message': 'But how can I help them?'}
			,
			{'speaker': 'bird'
			'message': 'Just do your best.'}
			,
			{'speaker': 'bird'
			'message': 'I am sure you will do fine.'}

		]

	console.log(conversation)

	$('.cloud_hosp').not(':first').hide()
	$('.hosp_next_6').hide()

	conversation_position = 0

	total_talks = (conversation.talks.length)

	console.log(total_talks)

	$('.hosp_next').on('click', (e) ->

		if conversation_position == total_talks
			$('.hosp_next').hide()
			$('.hosp_next_6').show()
			
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

		e.preventDefault()
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