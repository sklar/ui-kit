##
# Compile Sass using node-sass.
# @see https://www.npmjs.com/package/grunt-sass
#

module.exports = (grunt) ->

    options:
        # includePaths: [
        #   '<%= path.vendor %>/susy/sass'
        # ]
        indentWidth: 4
        outputStyle: 'expanded'
        precision: 5
        sourceMap: true

    test:
        files: [
            expand: true
            cwd: '<%= path.temp %>/sass'
            src: ['*.scss']
            dest: '<%= path.test %>/stylesheets'
            ext: '.css'
        ]
