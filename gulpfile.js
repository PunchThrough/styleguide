var gulp = require('gulp')
var ghPages = require('gulp-gh-pages')
var exec = require('child_process').exec

var config = {
  push: true
}

var build_cmd = 'bundle exec jekyll build --config _prod_config.yml'

gulp.task('build', function(done) {
  exec(build_cmd, function(err, stdout, stderr) {
    if (err) throw err
    process.stdout.write(stdout)
    process.stderr.write(stderr)
    done()
  })
})

gulp.task('deploy', ['build'], function() {
  return gulp.src(['_site/*', '_site/**/*'])
    .pipe(ghPages(config))
})
