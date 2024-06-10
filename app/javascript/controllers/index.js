import { application } from "./application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Register individual controllers
import FooterController from "./footer_controller"
application.register("footer", FooterController)

import SearchMainController from "./search_main_controller"
application.register("search-main", SearchMainController)

import RecommendationsController from "./recommendations_controller"
application.register("recommendations", RecommendationsController)
