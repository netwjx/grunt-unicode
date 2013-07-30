# grunt-unicode [![Build Status](https://travis-ci.org/netwjx/grunt-unicode.png)](https://travis-ci.org/netwjx/grunt-unicode) [![Dependency Status](https://gemnasium.com/netwjx/grunt-unicode.png)](https://gemnasium.com/netwjx/grunt-unicode) [![NPM version](https://badge.fury.io/js/grunt-unicode.png)](http://badge.fury.io/js/grunt-unicode)

> Convert unicode char to \\uXXXX. For example use in Firefox Add-on

## Getting Started
This plugin requires Grunt `~0.4.1`

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar with that process, you may install this plugin with this command:

```shell
npm install grunt-unicode --save-dev
```

Once the plugin has been installed, it may be enabled inside your Gruntfile with this line of JavaScript:

```js
grunt.loadNpmTasks('grunt-unicode');
```

## The "unicode" task

### Overview
In your project's Gruntfile, add a section named `unicode` to the data object passed into `grunt.initConfig()`.

```js
grunt.initConfig({
  unicode: {
    main: {
      files: [{
        expand: true,
        cwd: 'src',
        src: '**/*.js',
        dest: 'dest/'
      }]
    },
  },
})
```

