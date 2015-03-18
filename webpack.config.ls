module.exports = do
  entry: "./app/js/app.ls"
  output:
    path: "./_public/js"
    publicPath: "http://localhost/"
    filename: "app.js"
  module:
    loaders:
      * test: /\.ls$/
        loader: "livescript-loader"
      * test: /\.styl$/
        loader: "style-loader!stylus-loader"
  resolve:
    extensions: <[.js .ls]>
