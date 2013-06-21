$(document).ready(() ->
	conversation =
		talks: [
			{'speaker': 'bird'
			'message': 'You are at the city clinic. You are a doctor.'}
			,
			{'speaker': 'bobo'
			'message': 'Who are you?'}
			,
			{'speaker': 'bird'
			'message': 'I am Cheeko. I am here to help you.'}
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


	$('.cloud_hosp').not(':first').hide()
	$('	.hosp_next_6,
			.bobo_doc_sitting,
			.bobo_doc_mob,
			.hosp_bird_glow_mob').hide()

	conversation_position = 0

	total_talks = (conversation.talks.length)

	$('.hosp_next, .hosp_next_btn_mob').on('click', (e) ->

		speaker = conversation.talks[conversation_position].speaker
		message = conversation.talks[conversation_position].message

		if (speaker == 'bobo')
			$('	.cloud_hosp,
					.hosp_bird_glow,
					.bobo_doc_sitting,
					.bobo_doc_mob,
					.hosp_bird_glow_mob').hide()
			$('	.bubble_hosp_bobo .hosp_con').text(message)
			$('	.bubble_hosp_bobo,
					.bobo_doc_sitting_glow,
					.hosp_bird,
					.bobo_doc_glow_mob,
					.hosp_bird_mob').show()

		else 
			$('	.hosp_bird,
					.hosp_bird_mob,
			 		.cloud_hosp,
			 		.bobo_doc_sitting_glow,
			 		.bobo_doc_glow_mob').hide()
			$('	.bubble_hosp_bird .hosp_con').text(message)
			$('	.hosp_bird_glow, 
					.bubble_hosp_bird,
					.bobo_doc_sitting,
					.bobo_doc_mob,
					.hosp_bird_glow_mob').show()

		conversation_position++

		e.preventDefault()
		return false
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