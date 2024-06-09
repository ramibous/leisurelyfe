// app/javascript/controllers/search_main_controller.js
// this javascript for the home page search_main_html.erb
import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"

export default class extends Controller {
  static targets = ["datePicker", "minusButton", "plusButton", "inputGuests"]

  connect() {
    this.initFlatpickr()
    this.initGuestButtons()
  }

  initFlatpickr() {
    if (this.hasDatePickerTarget) {
      flatpickr(this.datePickerTarget, {
        mode: "single",
        dateFormat: "Y-m-d",
        minDate: "today"
      })
    }
  }

  initGuestButtons() {
    if (this.hasMinusButtonTarget && this.hasPlusButtonTarget && this.hasInputGuestsTarget) {
      this.minusButtonTarget.addEventListener('click', () => this.decrementGuests())
      this.plusButtonTarget.addEventListener('click', () => this.incrementGuests())
    }
  }

  decrementGuests() {
    let value = parseInt(this.inputGuestsTarget.value)
    if (value > parseInt(this.inputGuestsTarget.min)) {
      value--
      this.inputGuestsTarget.value = value
    }
  }

  incrementGuests() {
    let value = parseInt(this.inputGuestsTarget.value)
    value++
    this.inputGuestsTarget.value = value
  }
}
