

# First Screen
arrowBack.visible = false
arrowBack2.visible = false
claudiaJones_1.visible = false
	
next1_on.visible = false

EmailBox.visible = false
EmailBox.opacity = 0

whatsyourEmail.opacity = 0

arrowBack.opacity = 0

wrongEmail.visible = false

hmm.visible = false


nameBox1.onClick (event, layer) ->
	yourFullName.visible = false
	blinker.visible = false
	claudiaJones_1.visible = true
	next1.visible = false
	next1_on.visible = true

next1_on.onClick (event, layer) ->
	next1_on.visible = false
	next1.visible = true
	EmailBox.visible = true
	claudiaJones_1.animate
		x: 0
		opacity: 0
		options:
			time: 0.8
			curve: Bezier.ease
	whatsyourname.visible = false
	
	nameBox1.animate
		x: 296
		opacity: 0
		width: 100
		options:
			time: 0.5
			curve: Bezier.easeIn
	EmailBox.animate
		x: 419
		opacity: 1.00
		options:
			time: 0.8
			curve: Bezier.ease
	whatsyourEmail.opacity = 1
	arrowBack.animate
		opacity: 1
		options:
			time: 1
	nameBox1.visible = false
	arrowBack.visible =true


# Second Screen

correctEmail.visible = false
rightArrow2.visible = false
enterPassword.visible= false
passwordBox1.visible = false
joinNow.visible = false

arrowBack.onClick (event, layer) ->
	EmailBox.visible = false
	EmailBox.opacity = 0

	whatsyourEmail.opacity = 0
	whatsyourname.visible = true
	whatsyourname.opacity = 1
	yourFullName.visible = false
	claudiaJones_1.visible = true
	claudiaJones_1.x = 8
	
	claudiaJones_1.opacity = 1
	arrowBack.visible = false
	arrowBack.opacity = 0

	wrongEmail.visible = false

	hmm.visible = false
	nameBox1.visible = true
	nameBox1.opacity = 1
	nameBox1.x = 419
	nameBox1.width= 315
	next1.visible = false
	next1_on.visible = true
	next1_on.opacity = 1


EmailBox.onClick (event, layer) ->
	wrongEmail.visible = true
	email_placeholder.visible = false
	blinker2.visible = false
	hmm.visible = true
	EmailBox.onClick (event, layer) ->
		hmm.visible = false
		wrongEmail.visible = false
		correctEmail.visible = true
		rightArrow2.visible = true

		rightArrow2.onClick (event, layer) ->
	#		print "hello"
	#		arrowBack.visible = true
			arrowBack2.visible = true
			passwordBox1.visible = true
			next1.visible = false
			rightArrow2.visible = false
			whatsyourEmail.visible = false
			
			enterPassword.visible = true
			joinNow.visible = true
			EmailBox.animate
				x: 296
				opacity: 0
				width: 100
				options:
					time: 0.5
					curve: Bezier.easeIn
			passwordBox1.animate
				x: 419
				opacity: 1
				options: 
					time: 0.8
					curve: Bezier.easeIn



# Third Screen
arrowBack.visible = false
#arrowBack2.visible = true

weakPass.visible = false
okPass.visible = false
strongPass.visible = false
#psd8.Group_1.visible = true
A2.opacity= 0
A3.visible = false
A3. opacity = 1

arrowBack2.onClick (event, layer) ->
	weakPass.visible = false
	okPass.visible = false
	strongPass.visible = false
	A2.opacity= 0
	EmailBox.animate 
		x: 417
		opacity: 1.00
		width: 315
	correctEmail.visible = true
	rightArrow2.visible = true
	arrowBack.visible =true
	arrowBack2.visible = false
	enterPassword.visible = false
	whatsyourEmail.visible = true
	passwordPlaceholder.visible =true
	passwordBox1.visible =false
	joinNow.visible=false
	

joinNow.states.a =
	opacity: 0.00
	scale: 0.00
	blur: 20
	brightness: 206

passwordBox1.onClick (event, layer) ->
	weakPass.visible = true
	passwordPlaceholder.visible = false
	blinker2_1.visible = false
	passwordBox1.onClick (event, layer) ->
		weakPass.visible = false
		okPass.visible = true
		joinNow.backgroundColor = '#2ecbf3'
		joinNow.onClick (event, layer) ->
			A2.visible = true
			joinNow.animate "a",
					options:
						time: 1
			A1.animate 
				opacity: 0
				delay: 1 
			A2.animate
				opacity: 1
				delay: 1
			Go_back_to_shopping_in.onClick (event, layer) ->
					A3.visible = true
					A2.visible= false

		passwordBox1.onClick (event, layer) ->
			okPass.visible = false
			strongPass.visible = true
			joinNow.onClick (event, layer) ->
				joinNow.animate "a",
					options:
						time: 1
				A1.animate 
					opacity: 0
					delay: 1 
				A2.animate
					opacity: 1
					delay: 1
				Go_back_to_shopping_in.onClick (event, layer) ->
					A3.visible = true
					A2.visible = false
