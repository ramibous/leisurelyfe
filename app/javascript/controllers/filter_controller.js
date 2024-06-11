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

    // Prevent the form submission to keep the modal functional
    event.preventDefault()

    // Ensure min and max prices are included in the form submission
    const minPriceInput = document.createElement('input')
    minPriceInput.type = 'hidden'
    minPriceInput.name = 'min_price'
    minPriceInput.value = this.minPriceTarget.value
    this.searchFormTarget.appendChild(minPriceInput)

    const maxPriceInput = document.createElement('input')
    maxPriceInput.type = 'hidden'
    maxPriceInput.name = 'max_price'
    maxPriceInput.value = this.maxPriceTarget.value
    this.searchFormTarget.appendChild(maxPriceInput)

    // Trigger the actual form submission after closing the modal
    this.searchFormTarget.submit()
  }

  handleSliderInput() {
    const value = this.priceRangeSliderTarget.value
    this.minPriceTarget.value = value
    this.maxPriceTarget.value = parseInt(value) + 1000 // Example adjustment for 1000 CAD max
  }
}
