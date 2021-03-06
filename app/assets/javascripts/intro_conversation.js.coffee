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
			'message': 'Yes. She received some medicine that will help to control the virus.'}
			,
			{'speaker': 'bobo'
			'message': 'Can we visit her now?'}
			,
			{'speaker': 'mom'
			'message': 'No Bobo. It is getting late, you have to go to bed.'}
			,
			{'speaker': 'bobo'
			'message': 'But....'}
			,
			{'speaker': 'mom'
			'message': 'We will visit her tomorrow, I promise!' }

		]

	$('.cloud_intro').not(':first').hide()
	$('	.bobo_bubble_glow,
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

		return false
	)
)