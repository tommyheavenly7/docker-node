const gulp = require('gulp');
const del = require('del');
const ejs = require('gulp-ejs');
const rename = require('gulp-rename');

const clean = _ => del(['export/*',]);
const compose_ncu = _ => gulp.src([
      'src/**/*.ejs',
      '!src/_partial/*.ejs'
    ])
    .pipe(ejs({}, {}, {ext: ''}))
    .pipe(rename({extname: ''}))
    .pipe(gulp.dest('export'));

gulp.task('clean', clean);
gulp.task('compose', compose_ncu);
gulp.task('build', gulp.series(
    clean,
    gulp.parallel(
        compose_ncu
    )
));
