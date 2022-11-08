import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="category-filter"
export default class extends Controller {
  static targets = ["items"];
  // filter using classes and hiding others
  connect() {
  }

  isActive(selection, itemCat) {
    return itemCat.includes(selection);
  }

  updateItems(event) {
    const selectedCat = event.currentTarget.dataset.category
    this.itemsTargets.forEach((item) => {
      const cardCat = item.dataset.category;
      if (!this.isActive(selectedCat, cardCat)) {
        // item.classList.add("hidden");
        item.setAttribute("hidden", "");
      } else {
        item.removeAttribute("hidden");
        // item.classList.remove("hidden");
      }
    });
  }

  // Alternative Solution
  // the page is a white canvas
  // fetch all the posts once connecting
  // fetch just a category on clicking the category
}
