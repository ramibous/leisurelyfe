pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "flatpickr", to: "https://ga.jspm.io/npm:flatpickr@4.6.9/dist/flatpickr.js"
pin "mapbox-gl", to: "https://ga.jspm.io/npm:mapbox-gl@3.1.2/dist/mapbox-gl.js"
pin "process", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/process-production.js"
pin "@rails/request", to: "https://cdn.jsdelivr.net/npm/@rails/request.js"
