// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)
// index page script for index page
import FooterController from "./footer_controller"
application.register("footer", FooterController)

// app/javascript/controllers/index.js


import SearchMainController from "./search_main_controller"
application.register("search-main", SearchMainController)


import RecommendationsController from "./recommendations_controller"
application.register("recommendations", RecommendationsController)