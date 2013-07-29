module.exports = (grunt)->
  grunt.initConfig
    unicode:
      main:
        files:
          'tmp/default_options': 'test/fixtures/testing'
    coffee:
      options:
        bare: on
      main:
        files:[
          expand: on
          src: [
            'tasks/**/*.coffee'
            'test/**/*.coffee'
          ]
          ext: '.js'
        ]
    coffeelint:
      options:
        max_line_length:
          value: 130
      main:
        files:
          src: [
            'Gruntfile.coffee'
            'tasks/**/*.coffee'
            'test/**/*.coffee'
          ]
    watch:
      main:
        files: "<%= coffee.main.files.0.src %>"
        tasks: [
          'clean'
          'coffee'
        ]
    clean:
      main:
        expand: on
        src: [
          'tasks/**/*.js'
          'test/**/*.js'
        ]
      tests: 'tmp'
    nodeunit:
      tests: 'test/*_test.js'

  require('matchdep').filterDev('grunt-*').forEach grunt.loadNpmTasks

  grunt.loadTasks 'tasks'

  grunt.registerTask 'test', [
    'nodeunit'
  ]

  grunt.registerTask 'default', [
    'clean'
    'coffeelint'
    'coffee'
  ]