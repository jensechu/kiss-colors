$ ->
  console.log 'yolo'
  colors = ['black', 'white', 'pink', 'red', 'orange', 'yellow', 'green', 'blue', 'purple']
  values = ['95', '90', '80', '70', '60', '50', '40', '30', '20']

  for color in colors
    $row = $("<div class='row'></div>")
    $('.content').append $row
    $($row).append "<div class='swatch'>#{color}</div>"
    for value in values
      $swatch = $ "<div class='swatch color #{color}_#{value}'>#{value}</div>"
      $($row).append $swatch

  $('.toggle-background').on 'click', ->
    $('body').toggleClass 'black-background'
    $('.swatch.color').toggleClass 'black-mode'
    