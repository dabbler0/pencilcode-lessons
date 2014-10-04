MAX_WIDTH = 500
MAX_HEIGHT = 500
$('pre').filter((i, el) -> $(el).has('code')).each ->
  wrapperDiv = $('<div>').css({
    float: 'right'
    overflow: 'hidden'
    position: 'relative'
    zIndex: '-1'
    width: 0
    height: 0
  }).prependTo(@)

  iframe = $('<iframe>').css({
    position: 'absolute'
    left: '-9999px'
    top: '-9999px'
    zIndex: '-1'
    width: MAX_WIDTH
    height: MAX_HEIGHT
  }).get 0

  wrapperDiv.append iframe

  win = (iframe.contentWindow ? iframe.contentDocument)
  doc = win.document

  code = @innerText

  doc.open()
  doc.write """
  <!doctype html>
  <html>
  <body>
  <script src='vendor/turtlebits.js'></script>
  <script src='vendor/seedrandom.js'></script>
  <script type="text/coffeescript">
eval @_start_ide_cs
window.speed Infinity
window.speed = ->
Math.seedrandom 'turtle'
#{code}
   </script>
   </body>
   </html>
  """
  doc.close()

  win.addEventListener 'load', =>
    canvas = win.canvas()
    ctx = canvas.getContext '2d'

    data = ctx.getImageData 0, 0, canvas.width, canvas.height

    min = {x: Infinity, y: Infinity}
    max = {x: 0, y: 0}

    distance = {x: 0, y: 0}

    for _, i in data.data by 4
      if data.data[i + 3] > 0
        x = (i / 4) % data.width
        y = Math.floor (i / (4 * data.width))

        min.x = Math.min min.x, x
        max.x = Math.max max.x, x

        min.y = Math.min min.y, y
        max.y = Math.max max.y, y

        distance.x = Math.max distance.x, Math.abs (data.width / 2) - x
        distance.y = Math.max distance.y, Math.abs (data.height / 2) - y

    $(wrapperDiv).css({
      width: max.x - min.x + 50
      height: max.y - min.y + 50
    })

    $(@).css {
      height: Math.max $(@).height(), max.y - min.y + 50
      border: '1px solid black'
    }

    console.log canvas.width, canvas.height, min

    $(iframe).css({
      left: 25 - min.x
      top: 25 - min.y
    })
