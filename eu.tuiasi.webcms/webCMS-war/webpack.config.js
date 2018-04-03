var packageJSON = require('./package.json');
var path = require('path');
var webpack = require('webpack');



module.exports = {
  entry: `${__dirname}/src/main/webapp/react/app.js`,
  watch: true,
  output: {
	path: __dirname,
    filename: 'src/main/webapp/resources/static/built/app-bundle.js'
  },
  
  module: {
      loaders: [
          {
              test: path.join(__dirname, '.'),
              exclude: /(node_modules)/,
              loader: 'babel',
              query: {
                  cacheDirectory: true,
                  presets: ['es2015', 'react']
              }
          }
      ]
  }
};