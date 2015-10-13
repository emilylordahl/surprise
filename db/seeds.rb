require "./models/koala"

Koala.destroy_all

STUDENT_SHOUTS = [
  { name: 'David', shoutout: 'David is super nice and collaborative.' },
  { name: 'Skip', shoutout: 'Skip for helping me with that nested loop code!' },
  { name: 'Just for giggles...', shoutout: "Hey hey, I got a good one. Remember when we were all sitting together on the bleachers? If we weren\'t koalas, but a different species of bear, it would have been a kodiak moment..."},
  { name: 'Ian', shoutout: 'Ian is an Ian-spiration. Ian is the coolest person at GA.' },
  { name: 'Ash', shoutout: 'Shout out to Ash. She\'s gotten super good and is always down to help me out with homework.' },
  { name: 'Just for giggles...', shoutout: "I don\'t know what this means."},
  { name: 'Sophie', shoutout: 'Sophie is a CSS wizard. She has taught me a lot on how to use CSS more effectively.' },
  { name: 'Sam', shoutout: 'Sam answered a lot of my questions last week after I filled out the exit ticket so I am mentioning him this time. Sam!' },
  { name: 'Just for giggles...', shoutout: "As always, I really like the people in this class."},
  { name: 'Willis', shoutout: 'Whatchyou talking \'bout Willis?!' },
  { name: 'Alan', shoutout: 'Alan, keep up the good work! Shout out to Alan for getting me ice cream sandwiches!' },
  { name: 'Just for giggles...', shoutout: ":koala:"},
  { name: 'Vidit', shoutout: 'Vidit what up homie? Vidit helped me brainstorm an idea for my final project.' },
  { name: 'Tim', shoutout: 'Tim for helping test my number guessing project. Tim\'s the shit!' },
  { name: 'Just for giggles...', shoutout: "Shout out to Famous Amos cookies. I love your cookies, Mr. Amos."},
  { name: 'Jon', shoutout: 'Jon for helping explain some things I didn\'t get right away.' },
  { name: 'Steve', shoutout: 'Steve is killing it.' },
  { name: 'Just for giggles...', shoutout: "#koalacrew"},
  { name: 'Maitri', shoutout: 'Worked a lot with Maitri this week. Shout out to her!!' },
  { name: 'Matt', shoutout: 'Matt makes excellent t-shirt choices. Matt helps with errors and has a good attitude in general.' },
  { name: 'Eduard', shoutout: 'Jersey boys represent!!!' },
  { name: 'Just for giggles...', shoutout: "Kathew the Koala for being a great test user for my app."},
  { name: 'Raymond', shoutout: 'Raymond\'s been shooting out giphys in our chat like no other! Raymond helped me with some stuff this week and has been really encouraging when I have gotten realllly frustrated.' },
  { name: 'Bryan', shoutout: 'Have a good work flow with Bryan--what\'s up!' },
  { name: 'Colin', shoutout: 'Colin is great at algorithms. Colin helped me understand some problems I was having with if statements by explaining it in a different way.' },
  { name: 'Just because...', shoutout: "Love my classmates!"}
]

i = 0

while ( i < STUDENT_SHOUTS.length ) do
  Koala.create({
    name: STUDENT_SHOUTS[i][:name],
    shoutout: STUDENT_SHOUTS[i][:shoutout]
  })
  i += 1
end
