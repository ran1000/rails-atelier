import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="category-filter"
export default class extends Controller {
  static targets = ["items", "children"];

  // sendMessageToChild() {
  //   this.childrenTarget.dispatchEvent(new CustomEvent("message", { message: "Hello" }))
  // }

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
        item.setAttribute("hidden", "");
      } else {
        item.removeAttribute("hidden");
      }
    });
  }


}

// Alternative Solution
// the page is a white canvas
// fetch all the posts once connecting
// fetch just a category on clicking the category
