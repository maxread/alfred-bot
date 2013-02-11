# Welcome someone to chat
#
#
# welcome

welcome_responses = [
  'It\'s good to be back, sir',
  'Thank you, sir',
  'At your service, sir'
]

thanks_responses = [
  'My pleasure, sir',
  'Very good, sir',
]

wtf_responses = [
  "I am sorry, sir",
  "That is all I could find, sir",
  "..."
]

module.exports = (robot) ->
  robot.respond /welcome( back)?/i, (msg) ->
    msg.send "#{welcome_responses[Math.floor(Math.random() * 100 % welcome_responses.length)]}"
  
  robot.hear /thank(s| you)(,)? alfred/i, (msg) ->
    msg.send "#{thanks_responses[Math.floor(Math.random() * 100 % thanks_responses.length)]}"
  
  robot.hear /wtf alfred/i, (msg) ->
    msg.send "#{wtf_responses[Math.floor(Math.random() * 100 % wtf_responses.length)]}"