# Pin npm packages by running ./bin/importmap

pin 'application', preload: true
pin '@hotwired/turbo-rails', to: 'turbo.min.js', preload: true
pin '@hotwired/stimulus', to: 'stimulus.min.js', preload: true
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin "trix"
pin "@rails/actiontext", to: "actiontext.js"
pin "lodash", to: "https://ga.jspm.io/npm:lodash@4.17.21/lodash.js"

pin "flowbite", to: "https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.5/flowbite.turbo.min.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.7/lib/index.js"

pin "tailwindcss-stimulus-components" # @3.0.4
pin "stimulus-rails-nested-form", to: "https://ga.jspm.io/npm:stimulus-rails-nested-form@4.1.0/dist/stimulus-rails-nested-form.mjs"
pin "@hotwired/stimulus", to: "https://ga.jspm.io/npm:@hotwired/stimulus@3.2.1/dist/stimulus.js"
pin_all_from 'app/javascript/controllers', under: 'controllers'
