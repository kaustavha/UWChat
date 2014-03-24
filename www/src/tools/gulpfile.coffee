gulp = require 'gulp'
rename = require 'gulp-rename'
jade = require 'gulp-jade'
stylus = require 'gulp-stylus'
coffee = require 'gulp-coffee'
{log} = require 'gulp-util'
{argv} = require 'yargs'
wrench = require 'wrench'

if argv.type == 'cordova'
    src = './src'
    dest = '../'
    destJs = dest + 'js'
    destCss = dest + 'css'
    destHtml = dest
    wrench.copyDirSyncRecursive './bower_components', '../lib', {
        forceDelete: true
    }
else if argv.type == 'simple'
    src = './src'
    destHtml = './dist'
    destJs = destCss = destHtml + '/assets'
else
    src = './src'
    destHtml = destJs = destCss = './public'

gulp.task 'templates', -> 
    locs = {pretty: true}
    gulp.src src + '/**/*.jade'
        .pipe jade locals: locs
        .pipe rename 'index.html'
        .pipe gulp.dest destHtml

gulp.task 'scripts', ->
	gulp.src src + '/**/*.coffee'
	    .pipe coffee map: true 
	        .on 'error', log
        .pipe rename 'scripts.js'
	    .pipe gulp.dest destJs

gulp.task 'styles', -> 
    gulp.src src + '/**/*.styl'
        .pipe stylus()
        .pipe rename 'styles.css'
        .pipe gulp.dest destCss

gulp.task 'watch', ->
	gulp.watch src + '/**/*', ['build']

gulp.task 'build', ['templates', 'styles', 'scripts']
gulp.task 'default', ['build', 'watch']