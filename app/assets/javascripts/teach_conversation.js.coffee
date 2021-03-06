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
			'message': 'Yes, I did not see my teacher so I will try to be the teacher today.'}
			,
			{'speaker': 'bird'
			'message': 'This is your chance to teach your friends about HIV/AIDS.'}
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
			.bird_teacher,
			.teach_bird_mob,
			.teach_bobo_mob_glow').hide()

	conversation_position = 0

	total_talks = conversation.talks.length
	
	$('.teach_nxt_btn, .teach_nxt_btn_mob').on('click', (e) ->

		speaker = conversation.talks[conversation_position].speaker
		message = conversation.talks[conversation_position].message

		if (speaker == 'bobo')
			$('	.teacher_speech_bubble2,
					.bobo_teacher,
					.bird_teacher_glow,
					.teach_bobo_mob,
					.teach_bird_mob_glow').hide()
			$('	.teacher_speech_bubble .teach_con').text(message)
			$(' .teacher_speech_bubble,
					.bird_teacher,
					.bobo_teacher_glow,
					.teach_bird_mob,
					.teach_bobo_mob_glow').show()

		else 
			$('	.teacher_speech_bubble,
					.bobo_teacher_glow,
					.bird_teacher,
					.teach_bobo_mob_glow,
					.teach_bird_mob').hide()
			$('	.teacher_speech_bubble2 .teach_con').text(message)
			$(' .teacher_speech_bubble2,
					.bird_teacher_glow,
					.bobo_teacher,
					.teach_bobo_mob,
					.teach_bird_mob_glow').show()


		conversation_position++

		e.preventDefault()
			
		return false
	)
)