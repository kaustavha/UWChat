(function() {
  var app, ele;

  ele = function(id) {
    return document.getElementById(id);
  };

  app = {
    start: function() {
      var auth, chatRef;
      chatRef = new FireBase('https://fiery-fire-2457.firebaseio.com/chat');
      return auth = new FirebaseSimpleLogin(chatRef, function(err, user) {
        if (err) {
          return console.log(err);
        }
        return auth.createUser('email', 'pwd', function(err, user) {
          var chat;
          if (err) {
            return console.log(err);
          }
          chat = new FirechatUI(chatRef, ele('firechat-wrapper'));
          return chat.setUser('uid', 'name', function() {
            return chat.createRoom('UW', function(roomId) {
              return chat.enterRoom(roomId);
            });
          });
        });
      });
    }
  };

  document.addEventListener("deviceready", app.start, false);

}).call(this);
