var CopyWebpackPlugin = require("copy-webpack-plugin");

module.exports = {
  entry: __dirname + "/web/js/app.js",
  output: {
    path: __dirname + "/priv/static",
    filename: "js/app.js"
  },
  plugins: [
    new CopyWebpackPlugin([{ from: __dirname + "/web/static" }])
  ],
  module: {
    loaders: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: "babel-loader",
        query: {
          presets: ["es2015"]
        }
      }
    ]
  }
};