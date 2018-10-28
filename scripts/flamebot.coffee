# Description:
#   Custom scripts added to flamebot for the Genesis team!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   flamebot share a fact - flamebot shares a random Genesis fact
#   flamebot share facts - flamebot will share Genesis facts in the specific channel every 6 hours
#   flamebot stop facts - flamebot will stop sharing Genesis facts
#
# Author:
#   github.com/crahrig
#

module.exports = (robot) ->
  
  # Jefferine
  robot.hear /(@katherine|katherine).*?(@jauster|jeff)|(@jauster|jeff).*?(@katherine|katherine)/i, (res) ->
    res.send "Do you mean @jefferine?"

  # Genesis facts
  facts = [
    "The average adult brain weighs about 3.3lb and contains about 86 billion nerve cells - @Courtney",
    "Tulsa has a growing startup scene! - @michael.johns",
    "It is physically impossible for pigs to look up into the sky.",
    "In England, the Speaker of the House is not allowed to speak.",
    "Every continent begins and ends in the same letter.",
    "Every continent has a city called Rome.",
    "Two thirds of the world's eggplant is grown in New Jersey.",
    "The sentence ‘the quick brown fox jumps over the lazy dog’ uses every letter in the English language.",
    "No president of the United States was an only child.",
    "TYPEWRITER is one of the longest words that can be made using the letters on only one row of the keyboard.",
    "The word racecar and kayak are the same whether they are read left to right or right to left.",
    "A snail can sleep for 3 years.",
    "Shakespeare invented the word 'assassination' and 'bump'.",
    "The longest town name in the world has 167 letters.",
    "The state with the highest percentage of people who walk to work is Alaska.",
    "‘I am.’ is the shortest complete sentence in the English language.",
    "A dime has 118 ridges around the edge.",
    "Maine is the only state whose name contains one syllable.",
    "The winter of 1932 was so cold that Niagara Falls froze completely solid.",
    "There are 336 dimples on a regulation golf ball.",
    "No piece of paper can be folded in half more than eight times by human hands.",
    "There are 293 ways to make change for a dollar."
  ]

  robot.respond /share a fact/, (res) ->
    res.send res.random facts

  annoyIntervalId = null
  robot.respond /share facts/, (res) ->
    if annoyIntervalId
      res.send res.random facts
      return

    res.send "Time for Genesis facts!"
    annoyIntervalId = setInterval () ->
      res.send res.random facts
    , 21600000

  robot.respond /stop facts/, (res) ->
    if annoyIntervalId
      res.send "That's all for facts!"
      clearInterval(annoyIntervalId)
      annoyIntervalId = null
    else
      res.send "Need more Genesis facts?"