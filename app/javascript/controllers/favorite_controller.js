import { Controller } from "stimulus";
import axios from "axios";

export default class extends Controller {
  static targets = ["heart"];

  toggle(event) {
    event.preventDefault();

    const recommendationId = this.heartTarget.dataset.recommendationId;
    const url = `/favorites/toggle`;

    axios.post(url, { recommendation_id: recommendationId })
      .then(response => {
        if (response.data.status === "added") {
          this.heartTarget.classList.add("liked");
          this.heartTarget.classList.add("vibrate");
          setTimeout(() => { this.heartTarget.classList.remove("vibrate"); }, 300);
        } else {
          this.heartTarget.classList.remove("liked");
        }
      })
      .catch(error => {
        console.error("There was an error toggling the favorite!", error);
      });
  }
}
