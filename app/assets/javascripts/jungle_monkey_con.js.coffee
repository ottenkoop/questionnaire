$(document).ready(() ->
	conversation =
		talks: [
			{'speaker': 'monkey'
			'message': 'You are in the jungle. Welcome!'}
			,
			{'speaker': 'bobo'
			'message': 'And who are you?'}
			,
			{'speaker': 'monkey'
			'message': 'I am Kong. The jungle needs your help!'}
			,
			{'speaker': 'bobo'
			'message': 'Alright, I’ll help you. What do I need to do?'}
			,
			{'speaker': 'monkey'
			'message': 'You need to talk to the mosquitoes! '}
			,
			{'speaker': 'monkey'
			'message': 'They are infecting people with HIV.'}
			,
			{'speaker': 'bobo'
			'message': 'Why do you think that?'}
			,
			{'speaker': 'monkey'
			'message': 'They sting people and that is how they get infected.'}
			,
			{'speaker': 'monkey'
			'message': 'Please help us Bobo. We do not want people to get sick.'}
			,
			{'speaker': 'bobo'
			'message': 'Okay. I will try to help you.'}
			,
			{'speaker': 'bobo'
			'message': 'Where can I find them?'}
			,
			{'speaker': 'monkey'
			'message': 'They live near the edge of the jungle.'}
		]

	$('	.cloud_monkey_jungle').not(':first').hide()
	$(' .jungle_bobo,
			.jungle_monkey_glow,
			.monkey_monkey_con_glow,
			.bobo_monkey_con').hide()

	conversation_position = 0

	total_talks = conversation.talks.length
	
	$('.jungle_next_btn, .jungle_next_btn_mob').on('click', (e) ->

		speaker = conversation.talks[conversation_position].speaker
		message = conversation.talks[conversation_position].message

		if (speaker == 'bobo')
			$('	.jungle_speech_bubble,
					.jungle_bobo,
					.jungle_monkey_glow,
					.bobo_monkey_con,
					.monkey_monkey_con_glow').hide()
			$('.jungle_speech_bubble2 .jungle_con').text(message)
			$('	.jungle_speech_bubble2,
					.jungle_bobo_glow,
					.jungle_monkey,
					.bobo_monkey_con_glow,
					.monkey_monkey_con').show()

		else 
			$('	.jungle_speech_bubble2,
					.jungle_bobo_glow,
					.jungle_monkey,
					.bobo_monkey_con_glow,
					.monkey_monkey_con').hide()
			$('	.jungle_speech_bubble .jungle_con').text(message)
			$('	.jungle_speech_bubble,
					.jungle_bobo,
					.jungle_monkey_glow,
					.bobo_monkey_con,
					.monkey_monkey_con_glow').show()

		conversation_position++

		e.preventDefault()
			
		return false
	)
)