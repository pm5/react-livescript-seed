name: 'react-livescript-seed'
version: '0.0.1'
authors:
  * 'Pomin Wu (pm5) <pomin5@gmail.com>'
license: 'MIT'
scripts:
  republish: 'lsc -cj package.ls && lsc -cj bower.ls && lsc -cpb webpack.config.ls > webpack.config.js'
  build: 'webpack -p'
  dev: 'webpack -d --watch'
private: true
dependencies:
  "bower": "^1.3.12"
  "connect-livereload": "^0.5.2"
  "express": "^4.10.6"
  "file-loader": "^0.8.1"
  "flux": "^2.0.1"
  "gulp": "^3.8.10"
  "gulp-bower": "0.0.7"
  "gulp-browserify": "^0.5.0"
  "gulp-concat": "^2.4.2"
  "gulp-filter": "^1.0.2"
  "gulp-livereload": "^2.1.1"
  "gulp-livescript": "^2.3.0"
  "gulp-stylus": "^2.0.0"
  "gulp-uglify": "^1.0.2"
  "liveify": "^1.3.1"
  "livescript-loader": "^0.1.3"
  "main-bower-files": "^2.4.1"
  "react": "^0.13.1"
  "style-loader": "^0.8.3"
  "stylus-loader": "^1.0.0"
  "tiny-lr": "^0.1.4"
  "url-loader": "^0.5.5"
  "webpack": "^1.7.3"
