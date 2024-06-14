// app/javascript/controllers/search_icon_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["kidFriendlyCheckbox", "dogFriendlyCheckbox", "kidFriendlyIcon", "dogFriendlyIcon"]

  connect() {
    this.toggleIconColor(this.kidFriendlyCheckboxTarget, this.kidFriendlyIconTarget);
    this.toggleIconColor(this.dogFriendlyCheckboxTarget, this.dogFriendlyIconTarget);
  }

  toggleIconColor(checkbox, icon) {
    if (checkbox.checked) {
      icon.style.color = 'brown';
    } else {
      icon.style.color = '';
    }
  }

  changeKidFriendlyColor() {
    this.toggleIconColor(this.kidFriendlyCheckboxTarget, this.kidFriendlyIconTarget);
  }

  changeDogFriendlyColor() {
    this.toggleIconColor(this.dogFriendlyCheckboxTarget, this.dogFriendlyIconTarget);
  }
}
