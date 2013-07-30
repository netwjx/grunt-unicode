module.exports = exports = (grunt)->
  grunt.registerMultiTask 'unicode', grunt.file.readJSON('package.json').description, (args...)->
    opts = @options
      encoding: grunt.file.defaultEncoding

    for f in @files
      conts = for src in f.src
        grunt.file.read src,
          encoding: opts.encoding

      grunt.file.write f.dest ? f.src[0], unicode(conts.join '\n'),
        encoding: opts.encoding


unicode = (text)->
  text.replace /[\u00ff-\uffff]+/g, ($0)->
    (escape $0).replace /%/g, '\\'
