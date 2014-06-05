module.exports = (grunt)->
  grunt.initConfig
    unicode:
      main:
        files:[
          {
            src: 'test/fixtures/testing'
            dest: 'tmp/default_options'
          }
          {
            src: 'tmp/default_options_copy'
          }
        ]
    copy:
      tmp:
        files:
          'tmp/default_options_copy': 'test/fixtures/testing'
        
    coffee:
      options:
        bare: on
      main:
        files:[
          expand: on
          src: [
            'test/**/*.coffee'
          ]
          ext: '.js'
        ]
    coffeelint:
      options:
        max_line_length:
          value: 80
      main:
        files:
          src: [
            'Gruntfile.coffee'
            'tasks/**/*.coffee'
            'test/**/*.coffee'
          ]
    watch:
      main:
        files: "**/*.coffee"
        tasks: [
          'coffeelint'
          'coffee'
        ]
    clean:
      main: [
        '*.tgz'
      ]
      tests: [
        'tmp'
        'test/**/*.js'
      ]
    nodeunit:
      tests: 'test/*_test.js'

  require('matchdep').filterDev('grunt-*').forEach grunt.loadNpmTasks

  grunt.loadTasks 'tasks'

  grunt.registerTask 'test', [
    'unicode'
    'nodeunit'
    'clean:tests'
  ]

  grunt.registerTask 'build', [
    'clean'
    'coffeelint'
    'coffee'
    'copy:tmp'
  ]

  grunt.registerTask 'default', [
    'build'
    'watch'
  ]