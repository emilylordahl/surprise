function render() {
  console.log('Rendering...');
  $.ajax({
    url: '/api/koalas',
    success: function(data) {
      var $student = $('.student');
      var name;
      var shoutout;

      for (var i = 0; i < data.length; i++) {
        name = $('<h1>').text(data[i].name);
        shoutout = $('<h2>').text(data[i].shoutout);

        name.hide();
        shoutout.hide();

        (function() {
          var myName = name;
          var myShout = shoutout;
          setTimeout(function() {
            $student.empty()
            $student.append( myName );
            $student.append( myShout );
            myName.fadeIn();
            myShout.fadeIn();
          }, 7500 * i)
        })();

      }
    }
  });
}

$(document).ready(function() {
  console.log('Koalas forever <3');
  setTimeout(render, 5000);
  setInterval(render, 200000);
});
