require! <[express gulp gulp-concat tiny-lr gulp-livereload]>

livereload-server = tiny-lr!
livereload-port = 35729
livereload = -> gulp-livereload livereload-server

require! <[gulp-stylus]>

gulp.task 'css:app' ->
  gulp.src 'app/styles/*.styl'
    .pipe gulp-stylus!
    .pipe gulp-concat 'app.css'
    .pipe gulp.dest '_public/css'
    .pipe livereload!

gulp.task 'css' <[css:app]> ->

gulp.task 'template' ->
  gulp.src 'app/**/*.html'
    .pipe gulp.dest '_public'
    .pipe livereload!

gulp.task 'build' <[css template]> ->

gulp.task 'watch' ->
  livereload-server.listen livereload-port, ->
    gulp.watch ['app/**/*.stylus'] <[css:app]>
    gulp.watch ['app/**/*.html'] <[template]>

gulp.task 'dev' <[build watch]> ->
  require! <[express]>
  port = 3000
  app = express!
    .use require('connect-livereload')!
    .use '/' express.static '_public'
  console.log "Running on http://localhost:#port"
  app.listen port

gulp.task 'default' <[dev]> ->
