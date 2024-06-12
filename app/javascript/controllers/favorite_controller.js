import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static targets = ["heart"];

  toggle(event) {
    event.preventDefault();

    const recommendationId = this.heartTarget.dataset.recommendationId;
    const url = `/recommendations/${recommendationId}/favorite/toggle`;

    const options = {
      headers: {
        'Content-Type': 'application/json',
      },
     };

    fetch(url, options)
      .then(response => response.json())
      .then((data) => {
        if (data.status === "added") {
          this.heartTarget.classList.add("text-danger");
          this.heartTarget.classList.add("fa-solid");
          this.heartTarget.classList.add("vibrate");
          setTimeout(() => { this.heartTarget.classList.remove("vibrate"); }, 300);
        } else {
          this.heartTarget.classList.remove("text-danger");
          this.heartTarget.classList.remove("fa-solid");
          this.heartTarget.classList.remove("vibrate");
        }
      })
      .catch(error => {
        console.error("There was an error toggling the favorite!", error);
      });
  }
}
