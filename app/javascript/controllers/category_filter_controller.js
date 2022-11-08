import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="category-filter"
export default class extends Controller {
  static targets = ["items"];
  // filter using classes and hiding others
  connect() {
    console.log("Hello from category filter");
  }

  updateItems() {
    console.log("Updating");
    this.itemsTargets.forEach((item) => {
      console.dir(this.itemsTarget);
    });
  }

  // the page is a white canvas
  // fetch all the posts once connecting
  // fetch just a category on clicking the category
}
