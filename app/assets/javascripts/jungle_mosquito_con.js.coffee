$(document).ready(() ->
	conversation =
		talks: [
			{'speaker': 'mosquito'
			'message': 'Hi Bobo. I am Sting. Did you look for me?'}
			,
			{'speaker': 'bobo'
			'message': 'Yes. I need to talk to you.'}
			,
			{'speaker': 'bobo'
			'message': 'The monkeys told me that you guys are infecting humans with HIV.'}
			,
			{'speaker': 'mosquito'
			'message': 'But me and my friends are not infecting anyone!'}
			,
			{'speaker': 'mosquito'
			'message': 'You can only get HIV from blood and sexual fluids.'}
			,
			{'speaker': 'bobo'
			'message': 'Are you serious?'}
			,
			{'speaker': 'mosquito'
			'message': 'Yes. Mosquitoes are digesting the blood.'}
			,
			{'speaker': 'mosquito'
			'message': 'So we cannot infect another person.'}
			,
			{'speaker': 'bobo'
			'message': 'You are right. Everybody should know this.'}

		]

	$('.cloud_mos_jungle').not(':first').hide()
	$(' .bobo_mos_jungle,
			.jungle_mosquito_glow').hide()

	conversation_position = 0

	total_talks = conversation.talks.length
	
	$('.jungle_next_btn2, .jungle_mos_nxt_btn_mob ').on('click', (e) ->

		speaker = conversation.talks[conversation_position].speaker
		message = conversation.talks[conversation_position].message

		if (speaker == 'bobo')
			$('	.jungle_speech_bubble4,
					.bobo_mos_jungle,
					.jungle_mosquito_glow').hide()
			$('	.jungle_speech_bubble3 .mos_jungle_con').text(message)
			$('	.jungle_speech_bubble3,
					.bobo_mos_jungle_glow,
					.jungle_mosquito').show()

		else 
			$('	.jungle_speech_bubble3,
					.jungle_mosquito,
					.bobo_mos_jungle_glow').hide()
			$('	.jungle_speech_bubble4 .mos_jungle_con').text(message)
			$('	.jungle_speech_bubble4,
					.bobo_mos_jungle,
					.jungle_mosquito_glow').show()

		conversation_position++

		e.preventDefault()
			
		return false
	)
)