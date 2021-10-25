process.env.NODE_ENV = process.env.NODE_ENV || `development`

const StylelintPlugin = require(`stylelint-webpack-plugin`)

const environment = require(`./environment`)

// eslint

environment.loaders.append(`eslint`, {
  test: /\.js$/,
  exclude: /(node_modules|coverage|public\/packs-test)/,
  use: [{ loader: `eslint-loader` }],
})

// stylelint

environment.plugins.prepend(`StylelintPlugin`, new StylelintPlugin())

module.exports = environment.toWebpackConfig()
