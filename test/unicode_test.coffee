grunt = require 'grunt'

exports.unicode =
  default_options: (test)->
    test.expect 1

    actual = grunt.file.read 'tmp/default_options'
    expected = grunt.file.read 'test/expected/default_options'

    test.equal actual, expected, 'should describe what the default behavior is.'

    test.done()
  
  default_options_copy: (test)->
    test.expect 1

    actual = grunt.file.read 'tmp/default_options_copy'
    expected = grunt.file.read 'test/expected/default_options'
  
    test.equal actual, expected, 'should describe what the default behavior is.'

    test.done()
