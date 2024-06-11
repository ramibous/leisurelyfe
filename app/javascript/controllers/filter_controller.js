import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["modal", "modalContent", "priceRangeSlider", "minPrice", "maxPrice", "searchForm"]

  connect() {
    this.setupEventListeners()
  }

  setupEventListeners() {
    this.filterIcon = document.querySelector('.filter-icon')
    this.closeButton = this.modalTarget.querySelector('.close-button')

    this.filterIcon.addEventListener('click', this.openModal.bind(this))
    this.closeButton.addEventListener('click', this.closeModal.bind(this))
    this.searchFormTarget.addEventListener('submit', this.handleSubmit.bind(this))
    this.priceRangeSliderTarget.addEventListener('input', this.handleSliderInput.bind(this))
  }

  openModal() {
    this.modalTarget.style.display = 'block'
    this.modalContentTarget.classList.add('show')
  }

  closeModal() {
    this.modalContentTarget.classList.remove('show')
    setTimeout(() => {
      this.modalTarget.style.display = 'none'
    }, 300)
  }

  handleSubmit(event) {
    this.modalContentTarget.classList.remove('show')
    setTimeout(() => {
      this.modalTarget.style.display = 'none'
    }, 300)

  
    event.preventDefault()


    this.searchFormTarget.submit()
  }

  handleSliderInput() {
    this.minPriceTarget.value = this.priceRangeSliderTarget.value
    this.maxPriceTarget.value = parseInt(this.priceRangeSliderTarget.value) + 1000 
  }
}
