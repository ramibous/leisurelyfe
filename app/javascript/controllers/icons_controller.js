import { Controller } from "@hotwired/stimulus";

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

    let url = '/recommendations';
    if (this.selectedCategory && this.selectedCategory !== 'all') {
      url += `?category=${this.selectedCategory}`;
    }

    try {
      const response = await fetch(url, {
        headers: {
          'Accept': 'text/vnd.turbo-stream.html'
        }
      });

      if (!response.ok) {
        throw new Error("Network response was not ok");
      }

      const turboStream = await response.text();
      document.documentElement.insertAdjacentHTML('beforeend', turboStream);
    } catch (error) {
      console.error("Failed to load filtered results", error);
    }
  }
}
