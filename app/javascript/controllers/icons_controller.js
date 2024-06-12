import { Controller } from "@hotwired/stimulus";
import { get } from "@rails/request.js";

export default class extends Controller {
  static targets = ["icon"];

  connect() {
    this.selectedCategory = null;
  }

  async toggleActive(event) {
    event.preventDefault();
    const category = event.currentTarget.dataset.category;

    if (this.selectedCategory === category) {
      this.selectedCategory = null;
    } else {
      this.selectedCategory = category;
    }

    this.iconTargets.forEach(icon => {
      icon.classList.toggle("active", icon.dataset.category === this.selectedCategory);
    });

    try {
      const response = await get(`/recommendations?category=${this.selectedCategory}`, {
        responseKind: "turbo-stream"
      });

      if (!response.ok) {
        throw new Error("Network response was not ok");
      }
    } catch (error) {
      console.error("Failed to load filtered results", error);
    }
  }
}
