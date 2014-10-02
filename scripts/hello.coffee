# Description:
#   Hubot, be polite and say hello.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Hello or Good Day make hubot say hello to you back
#   Good Morning makes hubot say good morning to you back
hellos = [
    "Well hello there, %",
    "Hey %, Hello!",
    "Marnin', %",
    "Good day, %",
    "Good 'aye!, %",
]
mornings = [
    "Good morning, %",
    "Good morning to you too, %",
    "Good day, %",
    "Good 'aye!, %"
]
module.exports = (robot) ->
    robot.hear /(hello|good( [d'])?ay(e)?)|bonjour|salut/i, (msg) ->
        hello = msg.random hellos
        msg.send hello.replace "%", msg.message.user.name

    robot.hear /(^(good )?m(a|o)rnin(g)?)/i, (msg) ->
        hello = msg.random mornings
        msg.send hello.replace "%", msg.message.user.name

    robot.hear /hellooo/, (msg) ->
        msg.send "http://cl.ly/Xq1K/HELLO5-2.gif"