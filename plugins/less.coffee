less = require 'gulp-less'

module.exports = ( warlock ) ->
  warlock.flow 'less-to-build',
    source: [ '<%= globs.source.less %>' ]
    source_options:
      base: "<%= paths.source_app %>"
    tasks: [ 'webapp-build' ]
    merge: 'flow::styles-to-build::90'

  .add( 50, 'less-compile', less )

