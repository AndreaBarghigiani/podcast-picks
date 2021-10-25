const { environment } = require(`@rails/webpacker`)

// svg-transform-loader

const fileLoader = environment.loaders.get(`file`)
fileLoader.exclude = [/icons-css/]

environment.loaders.prepend(`svg-transform-loader`, {
  test: /\.svg(\?.*)?$/,
  include: /icons-css/,
  use: [`file-loader`, `svg-transform-loader`],
})

module.exports = environment
