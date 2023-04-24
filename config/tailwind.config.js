module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './node_modules/flowbite/**/*.js',
    './vendor/javascript/tailwindcss-stimulus-components.js'
  ],
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('flowbite-typography'),
    require('@tailwindcss/container-queries'),
    require("daisyui"),
    require('flowbite/plugin')
  ]
}
