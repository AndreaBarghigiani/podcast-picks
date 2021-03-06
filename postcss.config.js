module.exports = {
  plugins: [
    require(`tailwindcss`),
    require(`postcss-import`),
    require(`postcss-flexbugs-fixes`),
    require(`postcss-preset-env`)({
      autoprefixer: {
        flexbox: `no-2009`,
        grid: true,
      },
      stage: 3,
    }),
  ],
}
