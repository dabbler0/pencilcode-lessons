marked = require 'marked'
highlight = require 'highlight.js'
fs = require 'fs'

markdownCompiled = marked fs.readFileSync(process.argv[2]).toString(), {
  highlight: (code, lang) ->
    highlight.highlight('coffeescript', code).value
}

console.log """
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
