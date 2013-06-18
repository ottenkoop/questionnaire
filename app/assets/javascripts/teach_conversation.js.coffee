$(document).ready(() ->
	conversation =
		talks: [
			{'speaker': 'bobo'
			'message': 'Hi Cheeko.'}
			,
			{'speaker': 'bird'
			'message': 'I see you are a teacher now.'}
			,
			{'speaker': 'bobo'
			'message': 'Yes, I didn’t	see my teacher so I will try to be the teacher today.'}
			,
			{'speaker': 'bird'
			'message': 'That is your change to teach your friends about HIV/AIDS.'}
			,
			{'speaker': 'bird'
			'message': 'Can you do that?'}
			,
			{'speaker': 'bobo'
			'message': 'That is a great idea Cheeko! I will try to do that.'}
			,
			{'speaker': 'bobo'
			'message': 'Students. What do you want to know about HIV/AIDS?'}
		]

	$('	.cloud_teach').not(':first').hide()
	$('	.bobo_teacher_glow,
			.bird_teacher').hide()

	conversation_position = 0

	total_talks = conversation.talks.length
	
	$('.teach_nxt_btn, .teach_nxt_btn_mob').on('click', (e) ->

		speaker = conversation.talks[conversation_position].speaker
		message = conversation.talks[conversation_position].message

		if (speaker == 'bobo')
			$('	.cloud_teach,
					.hosp_bird_glow,
					.bobo_doc_sitting,
					.bobo_doc_mob,
					.hosp_bird_glow_mob').hide()
			$('	.teacher_speech_bubble .teach_con').text(message)
			$(' .teacher_speech_bubble').show()

		else 
			$('	.cloud_teach').hide()
			$('	.teacher_speech_bubble2 .teach_con').text(message)
			$('	.teacher_speech_bubble2').show()

		conversation_position++

		e.preventDefault()
			
		return false
	)
)