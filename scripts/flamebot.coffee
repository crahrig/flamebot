# Description:
#   Custom script for flamebot

module.exports = (robot) ->
  
  # Jefferine
  robot.hear /(@katherine|katherine).*?(@jauster|jeff)|(@jauster|jeff).*?(@katherine|katherine)/i, (res) ->
    res.send "Do you mean @jefferine?"