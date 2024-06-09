// app/javascript/controllers/recommendations_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["heart", "searchInput", "searchForm"]

  connect() {
    console.log("Recommendations controller connected")

    this.heartTargets.forEach(icon => {
      icon.addEventListener('click', () => this.toggleHeart(icon))
    })

    if (this.hasSearchInputTarget && this.hasSearchFormTarget) {
      this.searchInputTarget.addEventListener('input', () => {
        if (this.searchInputTarget.value === '') {
          this.searchFormTarget.submit()
        }
      })
    }
  }

  toggleHeart(icon) {
    if (icon.classList.contains('fa-regular')) {
      icon.classList.remove('fa-regular')
      icon.classList.add('fa-solid')
    } else {
      icon.classList.remove('fa-solid')
      icon.classList.add('fa-regular')
    }
  }
}
