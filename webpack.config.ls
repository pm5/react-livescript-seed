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
      * test: /\.(png|jpg|gif)$/
        loader: "url-loader?limit=8192"
  resolve:
    extensions: [""] ++ <[.js .ls]>
