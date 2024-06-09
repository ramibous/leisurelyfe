// app/javascript/controllers/footer_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.lastScrollY = window.scrollY
    this.onScroll = this.onScroll.bind(this)
    window.addEventListener('scroll', this.onScroll)
  }

  disconnect() {
    window.removeEventListener('scroll', this.onScroll)
  }

  onScroll() {
    if (window.scrollY > this.lastScrollY) {
      this.element.classList.add('hidden')
    } else {
      this.element.classList.remove('hidden')
    }
    this.lastScrollY = window.scrollY
  }
}
