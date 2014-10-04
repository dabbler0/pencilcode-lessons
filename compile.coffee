marked = require 'marked'
highlight = require 'highlight.js'
fs = require 'fs'

class LessonRenderer extends marked.Renderer
  constructor: -> super
  codespan: (text) ->
    '<code class="codespan">' + text + '</code>'

exports.compile = (source) ->
  markdownCompiled = marked source, {
    renderer: new LessonRenderer()
    highlight: (code, lang) ->
      highlight.highlight('coffeescript', code).value
  }

  return """
  <html>
    <head>
      <link rel='stylesheet' href='css/lesson.css'/>
    </head>
    <body>
      #{markdownCompiled}
      <script src='vendor/jquery.js'></script>
      <script src='build/demo.js'></script>
    </body>
  </html>
  """
