import { Controller } from "@hotwired/stimulus";

export default class extends Controller {.0
  static targets = ["removeButton"];

  connect() {
    this.removeButtons.forEach(button => {
      button.addEventListener("click", this.removeFavorite.bind(this));
    });
  }

  removeFavorite(event) {
    event.preventDefault();
    const recommendationId = event.currentTarget.dataset.recommendationId;
    const url = `/recommendations/${recommendationId}/favorite/toggle`;

    fetch(url, {
      method: 'DELETE'
    })
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json();
    })
    .then(data => {
      // Remove the favorite item from the DOM
      event.currentTarget.closest('.favorite-item').remove();
    })
    .catch(error => {
      console.error('Error:', error);
    });
  }
}
