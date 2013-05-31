$(document).ready(() ->
	conversation =
		talks: [
			{'speaker': 'mom'
			'message': 'She went to the doctor and was diagnosed with HIV.'}
			,
			{'speaker': 'bobo'
			'message': 'That sounds bad, will she be alright?'}
			,
			{'speaker': 'mom'
			'message': 'Yes. She recieved a medicine that will help to control the virus'}
			,
			{'speaker': 'bobo'
			'message': 'Can we visit her now?'}
			,
			{'speaker': 'mom'
			'message': 'No bobo. It is getting late, you have to go to bed.'}
			,
			{'speaker': 'bobo'
			'message': 'But....'}
			,
			{'speaker': 'mom'
			'message': 'We will visit her tomorrow, I promise!'}

		]

	console.log(conversation)

	$('.cloud_intro').not(':first').hide()
	$('	.intro_next_1,
			.bobo_bubble_glow,
			.mom_bubble,
			.mom_bubble_mob,
			.bobo_bubble_glow_mob').hide()

	conversation_position = 0

	total_talks = (conversation.talks.length)

	$('.intro_next, .intro_next_btn_mob').on('click', (e) ->

		speaker = conversation.talks[conversation_position].speaker
		message = conversation.talks[conversation_position].message

		if (speaker == 'bobo')
			$('	.cloud_intro,
					.mom_bubble_glow,
					.mom_bubble_glow_mob,
					.bobo_bubble,
					.bobo_bubble_mob').hide()
			$('	.bubble_intro_bobo .intro_con').text(message)
			$('	.bubble_intro_bobo,
					.mom_bubble,
					.mom_bubble_mob,
					.bobo_bubble_glow,
					.bobo_bubble_glow_mob').show()

		else 
			$('	.cloud_intro,
					.bobo_bubble_glow,
					.bobo_bubble_glow_mob,
					.mom_bubble,
					.mom_bubble_mob').hide()
			$('	.bubble_intro_mom .intro_con').text(message)
			$('	.bubble_intro_mom,
					.bobo_bubble,
					.bobo_bubble_mob,
					.mom_bubble_glow,
					.mom_bubble_glow_mob').show()

		conversation_position++

		e.preventDefault()

		if conversation_position == (total_talks)
			$('.intro_next_1').show()
			$('.intro_next').hide()
			
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