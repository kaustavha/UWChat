ele = (id) ->
	document.getElementById id

app =
	start: ->
		chatRef = new FireBase 'https://fiery-fire-2457.firebaseio.com/chat'
		auth = new FirebaseSimpleLogin chatRef, (err, user) ->
			return console.log err if err
			auth.createUser 'email', 'pwd', (err, user) ->
				return console.log err if err
				chat = new FirechatUI chatRef, ele 'firechat-wrapper'
				chat.setUser 'uid', 'name', ->
					chat.createRoom 'UW', (roomId) ->
						chat.enterRoom roomId

document.addEventListener "deviceready", app.start, false