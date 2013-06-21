$(document).ready(() ->
	conversation =
		talks: [
			{'speaker': 'bobo'
			'message': 'And who are you?'}
			,
			{'speaker': 'lion'
			'message': 'I am Richie. And I am the king of the jungle.'}
			,
			{'speaker': 'lion'
			'message': 'In order to pass...'}
			,
			{'speaker': 'lion'
			'message': 'You have to answer the following questions correctly.'}
			,
			{'speaker': 'bobo'
			'message': 'Okay.'}
			,
			{'speaker': 'lion'
			'message': 'Here are my questions.'}
		]

	$('	.cloud_lion_jungle').not(':first').hide()
	$(' .jungle_bobo_glow3,
			.jungle_lion,
			.lion_mob,
			.lion_bobo_glow').hide()

	conversation_position = 0

	total_talks = conversation.talks.length
	
	$('.jungle_next_btn3, .jungle_lion_next_btn_mob').on('click', (e) ->

		speaker = conversation.talks[conversation_position].speaker
		message = conversation.talks[conversation_position].message

		if (speaker == 'bobo')
			$('	.jungle_speech_bubble5,
					.jungle_lion_glow,
					.jungle_bobo3,
					.lion_bobo,
					.lion_mob_glow').hide()
			$('	.cloud_lion_jungle .lion_con').text(message)
			$('	.jungle_speech_bubble6,
					.jungle_lion,
					.jungle_bobo_glow3,
					.lion_bobo_glow,
					.lion_mob').show()

		else 
			$('	.jungle_speech_bubble6,
					.jungle_bobo_glow3,
					.jungle_lion,
					.lion_mob,
					.lion_bobo_glow').hide()
			$('	.cloud_lion_jungle .lion_con').text(message)
			$('	.jungle_speech_bubble5,
					.jungle_lion_glow,
					.jungle_bobo3,
					.lion_mob_glow,
					.lion_bobo').show()

		conversation_position++

		e.preventDefault()
			
		return false
	)
)