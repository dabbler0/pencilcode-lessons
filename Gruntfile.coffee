compiler = require './compile.coffee'
fs = require 'fs'

module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

    coffee:
      build:
        files:
          'build/demo.js': ['src/demo.coffee']

    uglify:
      build:
        files:
          'build/demo.min.js': ['build/demo.js']

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-uglify'

  grunt.registerTask 'default', ['coffee', 'uglify']
  grunt.registerTask 'lessons', ->
    mappings = grunt.file.expandMapping ['*.md'], 'built-lessons', {
      cwd: 'src-lessons/'
      ext: '.html'
    }

    for mapping in mappings
      source = fs.readFileSync mapping.src[0]
      fs.writeFileSync mapping.dest, compiler.compile source.toString()
      console.log 'Created file', mapping.dest
